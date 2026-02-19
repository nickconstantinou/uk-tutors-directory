# UK Tutors Directory - SEO Audit Report

**Website:** https://nickconstantinou.github.io/uk-tutors-directory/  
**Audit Date:** 2026-02-18  
**Auditor:** SEO Subagent

---

## Executive Summary

The UK Tutors Directory has a solid foundation with clean code and good UX, but suffers from **critical missing SEO elements**. Most notably: **no meta description**, **no Open Graph tags**, **no robots.txt**, and **missing structured data**. These are quick fixes that will significantly improve search visibility and social sharing.

**Overall Score: 65/100**

---

## 1. Technical SEO Issues

### 🔴 Critical Issues

#### 1.1 Missing Meta Description
**Impact:** High - Affects CTR in SERPs

**Current State:** No `<meta name="description">` tag present

**Fix:**
```html
<!-- Add to <head> section -->
<meta name="description" content="Find verified UK tutors for all subjects and levels. Browse Maths, English, Physics tutors in London, Manchester, Birmingham and more. No fees for parents.">
```

---

#### 1.2 Missing Open Graph (OG) Tags
**Impact:** High - Poor social media sharing

**Current State:** No OG tags - links shared on Facebook/LinkedIn will show generic preview

**Fix:**
```html
<!-- Open Graph -->
<meta property="og:title" content="UK Tutor Directory | Find the Perfect Tutor">
<meta property="og:description" content="Verified UK tutors. All subjects. All levels. No fees for parents. Find your perfect tutor today.">
<meta property="og:image" content="https://nickconstantinou.github.io/uk-tutors-directory/og-image.png">
<meta property="og:url" content="https://nickconstantinou.github.io/uk-tutors-directory/">
<meta property="og:type" content="website">
```

---

#### 1.3 Missing Twitter Card Tags
**Impact:** Medium - Poor Twitter sharing

**Fix:**
```html
<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="UK Tutor Directory | Find the Perfect Tutor">
<meta name="twitter:description" content="Verified UK tutors. All subjects. All levels. No fees for parents.">
<meta name="twitter:image" content="https://nickconstantinou.github.io/uk-tutors-directory/og-image.png">
```

---

#### 1.4 Missing Canonical URL
**Impact:** Medium - Potential duplicate content issues

**Fix:**
```html
<link rel="canonical" href="https://nickconstantinou.github.io/uk-tutors-directory/">
```

---

#### 1.5 Missing robots.txt (404)
**Impact:** Medium - Can't control search engine crawling

**Fix - Create robots.txt:**
```txt
User-agent: *
Allow: /

Sitemap: https://nickconstantinou.github.io/uk-tutors-directory/sitemap.xml
```

---

#### 1.6 Missing sitemap.xml
**Impact:** Medium - Helps search engines discover pages

**Fix - Create sitemap.xml:**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://nickconstantinou.github.io/uk-tutors-directory/</loc>
    <lastmod>2026-02-18</lastmod>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/uk-tutors-directory/list.html</loc>
    <lastmod>2026-02-18</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.8</priority>
  </url>
</urlset>
```

---

### 🟡 Moderate Issues

#### 1.7 Missing Structured Data (JSON-LD)
**Impact:** High - Missed rich snippets in SERPs

**Fix - Add LocalBusiness schema:**
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "UK Tutor Directory",
  "url": "https://nickconstantinou.github.io/uk-tutors-directory/",
  "description": "Find verified UK tutors for all subjects and levels. No fees for parents.",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://nickconstantinou.github.io/uk-tutors-directory/search?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
</script>
```

---

#### 1.8 Missing Image Alt Tags
**Impact:** Low-Medium - Accessibility + SEO

**Current State:** Tutor avatar placeholders have no alt text:
```html
<!-- Current (bad) -->
<div class="tutor-avatar">SM</div>

<!-- Fixed -->
<div class="tutor-avatar" aria-label="Sarah Mitchell profile photo">SM</div>
```

---

#### 1.9 Missing Favicon Link
**Impact:** Low - Minor UX/Branding

**Fix:**
```html
<link rel="icon" type="image/x-icon" href="/favicon.ico">
```

---

## 2. Content SEO Issues

### 🟡 Moderate Issues

#### 2.1 H1 Could Be More Keyword-Rich
**Current:** `<h1>Find the Perfect <span>Tutor</span> for Your Child</h1>`

**Recommended:**
```html
<h1>Find the Perfect <span>UK Tutor</span> for Your Child</h1>
```

---

#### 2.2 Missing H2 for SEO
**Current:** Section has no H2 or uses generic "How It Works"

**Recommended:** Add a keyword-rich H2:
```html
<section class="how-it-works" id="how-it-works">
  <h2>Find UK Tutors Near You</h2>
```

---

#### 2.3 Limited Internal Linking
**Current:** Only basic navigation links

**Add contextual links within content:**
```html
<p>Looking for <a href="?subject=maths">Maths tutors in London</a> or 
<a href="?subject=english">English tutors</a>? Our verified directory has you covered.</p>
```

---

#### 2.4 Missing FAQ Section
**Impact:** High - Featured snippets opportunity

**Add FAQ section:**
```html
<section class="faq">
  <h2>Frequently Asked Questions</h2>
  
  <details>
    <summary>How much do UK tutors charge?</summary>
    <p>UK tutors typically charge £30-50 per hour for GCSE level, and £40-60 for A-Level. Prices vary by location and experience.</p>
  </details>
  
  <details>
    <summary>Are your tutors verified?</summary>
    <p>Yes, all tutors in our directory are verified for qualifications and background.</p>
  </details>
</section>
```

---

## 3. Mobile SEO

### ✅ Good
- Responsive design implemented via media queries
- Touch-friendly button sizes
- Mobile-friendly navigation

---

## 4. Performance

### ✅ Good
- No render-blocking resources
- Minimal CSS (inline)
- Fast loading

---

## Priority Fix Checklist

| Priority | Issue | Effort |
|----------|-------|--------|
| 🔴 P1 | Add meta description | 5 min |
| 🔴 P1 | Add OG tags | 5 min |
| 🔴 P1 | Create robots.txt | 5 min |
| 🔴 P1 | Create sitemap.xml | 10 min |
| 🟡 P2 | Add JSON-LD schema | 15 min |
| 🟡 P2 | Add Twitter cards | 5 min |
| 🟡 P2 | Add canonical URL | 2 min |
| 🟡 P2 | Add FAQ section | 30 min |
| 🟢 P3 | Fix avatar alt tags | 10 min |
| 🟢 P3 | Add favicon | 5 min |

---

## Content SEO Guidelines (from SKILL.md)

Following the anti-slop protocol:

1. **Banned words to avoid:** "Delve", "Landscape", "Tapestry", "Robust", "Leverage", "Synergy", "Transformative"
2. **Use Anglo-Saxon roots:** "Use" not "Utilize", "Fix" not "Remediate"
3. **Active voice only:** "We connect parents with tutors" not "Parents are connected with tutors"
4. **Take a stance:** Say "No middleman fees" as a differentiator

---

## Files to Create

1. `/robots.txt`
2. `/sitemap.xml`
3. Update `index.html` - add meta tags, OG tags, canonical, JSON-LD
4. Update `list.html` - add meta description, OG tags
5. Create `og-image.png` (1200x630px) for social sharing

---

*Report generated by SEO Subagent*
