---
name: web-qa
description: Web UI QA - verify deployed pages work correctly
metadata:
  {
    "openclaw":
      {
        "emoji": "🔍",
        "requires": { "bins": ["curl"] },
      },
  }
---

# Web QA Skill

Always verify deployed web features work correctly. Use this skill after making changes to any website.

## Checklist

### 1. Basic Checks
```bash
# Check page loads
curl -s "https://example.com" | head -50

# Check for errors
curl -s "https://example.com" | grep -i error

# Check links work
curl -s -o /dev/null -w "%{http_code}" "https://example.com/page.html"
```

### 2. Visual Verification
```bash
# Check key elements render
curl -s "https://example.com" | grep -E "nav|header|footer|button"

# Check CSS/JS loaded
curl -s "https://example.com" | grep -E "\.css|\.js|font"
```

### 3. Functionality Checks
- Buttons link to correct pages
- Forms have proper inputs
- A/B test variants work
- Analytics scripts present

### 4. Mobile Check
```bash
# Check responsive CSS
curl -s "https://example.com" | grep -E "@media|max-width"
```

## Common Issues

| Issue | Check |
|-------|-------|
| Nav missing | Check HTML has `<nav>` tag |
| Styles broken | Verify CSS CDN or inline styles |
| Links dead | Test each link returns 200 |
| A/B not working | Check localStorage logic + URL params |
| JS errors | Check browser console |

## Process

1. **Before pushing**: Review code changes
2. **After deploy**: `curl` the live URL
3. **Verify key features**: nav, CTA, links, forms
4. **Test functionality**: Click through, submit forms
5. **Check analytics**: Confirm scripts loaded

## Always Remember

- **Screenshot** any issues you find
- **Test links** — don't assume they work
- **Check mobile** — responsive design
- **Verify analytics** — PostHog, etc. present
