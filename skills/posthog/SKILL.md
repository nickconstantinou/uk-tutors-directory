---
name: posthog
description: Manage PostHog analytics, A/B tests, and feature flags
metadata:
  {
    "openclaw":
      {
        "emoji": "📊",
        "requires": { "env": ["POSTHOG_API_KEY"] },
      },
  }
---

# PostHog Management

Use this skill to manage PostHog analytics, create A/B tests, and manage feature flags.

## Authentication

- **API Key:** `phx_3BbvL71so0yYa7HpLAS2QwRkX0lsJZvox4h88gQUPc43sYf`
- **Base URL:** `https://app.posthog.com`
- **Organization:** nick
- **Project ID:** 316789

## Environment

Set the API key:
```bash
export POSTHOG_API_KEY="your-api-key"
```

## Common Tasks

### 1. Get Account Info

```bash
curl -s "https://app.posthog.com/api/users/@me/" \
  -H "Authorization: Bearer $POSTHOG_API_KEY"
```

### 2. Create a Feature Flag

```bash
curl -s -X POST "https://app.posthog.com/api/projects/316789/feature_flags/" \
  -H "Authorization: Bearer $POSTHOG_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "new-landing-page",
    "key": "new-landing-page",
    "filters": {
      "groups": [
        {"properties": [], "rollout_percentage": 50}
      ]
    }
  }'
```

### 3. List Feature Flags

```bash
curl -s "https://app.posthog.com/api/projects/316789/feature_flags/" \
  -H "Authorization: Bearer $POSTHOG_API_KEY"
```

### 4. Create an Experiment (A/B Test)

```bash
curl -s -X POST "https://app.posthog.com/api/projects/316789/experiments/" \
  -H "Authorization: Bearer $POSTHOG_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Lead Magnet A/B Test",
    "feature_flag_key": "lead-magnet-variant",
    "parameters": {
      "feature_flag_variants": ["control", "variant_a", "variant_b"]
    }
  }'
```

### 5. Track Events

Send an event from the landing page:

```javascript
// Add to your HTML
posthog.init('phc_IdAZHvksJADiN0p8Cm7H73jh5NT6oQaoYfUgaPPRB28', {
  api_host: 'https://app.posthog.com'
})

posthog.capture('page_view', { variant: 'quiz' })
posthog.capture('lead_captured', { email: 'test@example.com', variant: 'quiz' })
```

### 6. Get Analytics Data

```bash
# Insights - number of events
curl -s "https://app.posthog.com/api/projects/316789/insights/trend/" \
  -H "Authorization: Bearer $POSTHOG_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "events": [{"id": "page_view"}],
    "date_from": "-7d"
  }'
```

### 7. Create Cohort

```bash
curl -s -X POST "https://app.posthog.com/api/projects/316789/cohorts/" \
  -H "Authorization: Bearer $POSTHOG_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "High Intent Users",
    "filters": {
      "properties": {
        "type": "AND",
        "values": [
          {"type": "event", "key": "lead_captured", "operator": "is_set"}
        ]
      }
    }
  }'
```

## JavaScript SDK Integration

For the ExamPulse landing page, add this to track A/B tests:

```html
<script>
  !function(t,e){var o,n,p,r;e.__SV||(window.posthog=e,e._i=[],e.init=function(i,s,a){function g(t,e){var o=e.split(".");2==o.length&&(t=t[o[0]],e=o[1]),t[e]=function(){t.push([e].concat(Array.prototype.slice.call(arguments,0)))}}p=t.createElement("script"),p.type="text/javascript",p.src="https://app.posthog.com/static/array.js",(r=t.getElementsByTagName("script")[0]).parentNode.insertBefore(p,r);var u=e;for(void 0!==a?u=e[a]=[]:e="posthog",u.people=u.people||[],u.toString=function(t){var e="posthog";return"posthog"!==e&&(e+="."+t),u[e]||(u[e]=function(){u[e].q||(u[e].q=[]),u[e].q.push(arguments)}),u[e]},u.people.toString=function(){return u.people.join("-")},o="capture identify alias setConfig segment".split(" "),n=0;n<o.length;n++)g(u,o[n]);e._i.push([i,s,a])},e.__SV=1)}(document,window.posthog||[]);
  
  posthog.init('phc_IdAZHvksJADiN0p8Cm7H73jh5NT6oQaoYfUgaPPRB28', {
    api_host: 'https://app.posthog.com',
    // Enable A/B test feature flags
    bootstrap: {
      featureFlags: {}
    }
  });
</script>
```

## Use Cases

1. **A/B Testing:** Create feature flags with percentage rollouts to test different lead magnets
2. **Analytics:** Track page views, CTA clicks, and conversions
3. **Feature Flags:** Gradually release new features to users
4. **Cohorts:** Group users by behavior for targeted campaigns

## Notes

- PostHog Cloud free tier: 1M events/month, 5k recordings
- Project API token (for frontend): `phc_IdAZHvksJADiN0p8Cm7H73jh5NT6oQaoYfUgaPPRB28`
- Personal API key (for management): `phx_3BbvL71so0yYa7HpLAS2QwRkX0lsJZvox4h88gQUPc43sYf`
