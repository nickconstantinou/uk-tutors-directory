# Quick SEO Fixes - Copy & Paste Code Snippets

## 1. Add to ALL pages - Meta Description + OG + Twitter Cards

Replace the `<head>` section in each HTML file with this enhanced version:

### index.html
```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ExamPulse - Stop Cramming. Start Understanding.</title>
  
  <!-- SEO - Meta Description -->
  <meta name="description" content="ExamPulse uses AI to create personalized GCSE revision tailored to your exam board (AQA, OCR, Edexcel, WJEC). Stop cramming, start understanding.">
  
  <!-- SEO - Canonical URL -->
  <link rel="canonical" href="https://nickconstantinou.github.io/exam-pulse-marketing/">
  
  <!-- SEO - Open Graph -->
  <meta property="og:title" content="ExamPulse - AI-Powered GCSE Revision">
  <meta property="og:description" content="Stop cramming. Start understanding. AI revision tuned to YOUR exam board.">
  <meta property="og:image" content="https://nickconstantinou.github.io/exam-pulse-marketing/images/og-image.png">
  <meta property="og:url" content="https://nickconstantinou.github.io/exam-pulse-marketing/">
  <meta property="og:type" content="website">
  
  <!-- SEO - Twitter Cards -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="ExamPulse - AI-Powered GCSE Revision">
  <meta name="twitter:description" content="Stop cramming. Start understanding. AI revision tuned to YOUR exam board.">
  <meta name="twitter:image" content="https://nickconstantinou.github.io/exam-pulse-marketing/images/og-image.png">
  
  <!-- Favicon -->
  <link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>📝</text></svg>">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  <!-- ... rest of styles ... -->
</head>
```

### quiz.html
```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>What's Your Revision Type? | ExamPulse Quiz</title>
  
  <meta name="description" content="Take our free 30-second quiz to discover your revision type and get personalized GCSE study tips.">
  <link rel="canonical" href="https://nickconstantinou.github.io/exam-pulse-marketing/quiz.html">
  
  <meta property="og:title" content="What's Your Revision Type? | ExamPulse Quiz">
  <meta property="og:description" content="Take our free 30-second quiz to discover your revision type.">
  <meta property="og:image" content="https://nickconstantinou.github.io/exam-pulse-marketing/images/og-image.png">
  <meta property="og:url" content="https://nickconstantinou.github.io/exam-pulse-marketing/quiz.html">
  <meta property="og:type" content="website">
  
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="What's Your Revision Type?">
  <meta name="twitter:description" content="Take our free 30-second quiz to discover your revision type.">
  <meta name="twitter:image" content="https://nickconstantinou.github.io/exam-pulse-marketing/images/og-image.png">
  
  <link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>📝</text></svg>">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  <!-- ... -->
</head>
```

### blog.html
```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Blog | ExamPulse</title>
  
  <meta name="description" content="Evidence-based GCSE revision tips and study science from ExamPulse. Learn about active recall, spaced repetition, and exam performance.">
  <link rel="canonical" href="https://nickconstantinou.github.io/exam-pulse-marketing/blog.html">
  
  <meta property="og:title" content="ExamPulse Blog - Revision Tips & Study Science">
  <meta property="og:description" content="Evidence-based GCSE revision tips and study science. Learn about active recall, spaced repetition, and exam performance.">
  <meta property="og:image" content="https://nickconstantinou.github.io/exam-pulse-marketing/images/og-image.png">
  <meta property="og:url" content="https://nickconstantinou.github.io/exam-pulse-marketing/blog.html">
  <meta property="og:type" content="website">
  
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="ExamPulse Blog - Revision Tips">
  <meta name="twitter:description" content="Evidence-based GCSE revision tips and study science.">
  <meta name="twitter:image" content="https://nickconstantinou.github.io/exam-pulse-marketing/images/og-image.png">
  
  <link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>📝</text></svg>">
  
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  <!-- ... -->
</head>
```

---

## 2. Create sitemap.xml (root folder)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/</loc>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/quiz.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/grade-calculator.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/gap-diagnostic.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/blog.html</loc>
    <changefreq>weekly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/blog/2026-02-18-active-recall.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/blog/2026-02-18-spaced-repetition.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/blog/2026-02-18-sleep-exam-performance.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
  <url>
    <loc>https://nickconstantinou.github.io/exam-pulse-marketing/blog/2026-02-18-pomodoro-gcse.html</loc>
    <changefreq>monthly</changefreq>
    <priority>0.6</priority>
  </url>
</urlset>
```

---

## 3. Create robots.txt (root folder)

```
User-agent: *
Allow: /

Sitemap: https://nickconstantinou.github.io/exam-pulse-marketing/sitemap.xml
```

---

## 4. Add Schema.org to Blog Posts

Add this before `</head>` in each blog post:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "ACTIVE RECALL TITLE HERE",
  "datePublished": "2026-02-18",
  "author": {
    "@type": "Organization",
    "name": "ExamPulse"
  },
  "description": "META DESCRIPTION HERE"
}
</script>
```

Example for active-recall.html:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "Active Recall: The Most Effective Study Technique You're Not Using",
  "datePublished": "2026-02-18",
  "author": {
    "@type": "Organization",
    "name": "ExamPulse"
  },
  "description": "Why reading your notes repeatedly is almost useless — and what to do instead."
}
</script>
```

---

## 5. Add Internal Links to Blog Posts

Add before the closing `</article>` tag in each blog post:

```html
<h3>Related Articles</h3>
<ul>
  <li><a href="2026-02-18-spaced-repetition.html">Spaced Repetition: The Science Behind Effective Revision</a></li>
  <li><a href="2026-02-18-sleep-exam-performance.html">Sleep and Exam Performance: The Science No One Talks About</a></li>
  <li><a href="2026-02-18-pomodoro-gcse.html">The Pomodoro Technique: Does It Actually Work for GCSE?</a></li>
</ul>
```

---

## 6. Create OG Image

Create a 1200x630px image at `/images/og-image.png` with:
- ExamPulse logo
- Tagline: "AI-Powered GCSE Revision"
- Brand colors (orange accent)

---

## Files to Modify

| File | Changes Needed |
|------|---------------|
| index.html | Meta desc, OG, Twitter, canonical, favicon |
| quiz.html | Meta desc, OG, Twitter, canonical, favicon |
| grade-calculator.html | Meta desc, OG, Twitter, canonical, favicon |
| gap-diagnostic.html | Meta desc, OG, Twitter, canonical, favicon |
| blog.html | Meta desc, OG, Twitter, canonical, favicon |
| blog/2026-02-18-active-recall.html | Meta desc, OG, Twitter, canonical, schema, internal links |
| blog/2026-02-18-spaced-repetition.html | Meta desc, OG, Twitter, canonical, schema, internal links |
| blog/2026-02-18-sleep-exam-performance.html | Meta desc, OG, Twitter, canonical, schema, internal links |
| blog/2026-02-18-pomodoro-gcse.html | Meta desc, OG, Twitter, canonical, schema, internal links |
| sitemap.xml | CREATE |
| robots.txt | CREATE |
| images/og-image.png | CREATE |
