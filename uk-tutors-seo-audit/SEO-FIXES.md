# SEO Fixes - Ready to Copy/Paste

## 1. robots.txt (create in root)

```txt
User-agent: *
Allow: /

Sitemap: https://nickconstantinou.github.io/uk-tutors-directory/sitemap.xml
```

---

## 2. sitemap.xml (create in root)

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

## 3. index.html - Complete <head> Fix

Replace the entire `<head>` section with:

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- Primary Meta Tags -->
  <title>UK Tutor Directory | Find the Perfect Tutor</title>
  <meta name="title" content="UK Tutor Directory | Find the Perfect Tutor">
  <meta name="description" content="Find verified UK tutors for all subjects and levels. Browse Maths, English, Physics tutors in London, Manchester, Birmingham and more. No fees for parents.">
  <meta name="keywords" content="UK tutors, find a tutor, tutoring, Maths tutor, English tutor, Physics tutor, GCSE tutor, A-Level tutor, London tutors, Manchester tutors">
  <link rel="canonical" href="https://nickconstantinou.github.io/uk-tutors-directory/">
  
  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://nickconstantinou.github.io/uk-tutors-directory/">
  <meta property="og:title" content="UK Tutor Directory | Find the Perfect Tutor">
  <meta property="og:description" content="Verified UK tutors. All subjects. All levels. No fees for parents. Find your perfect tutor today.">
  <meta property="og:image" content="https://nickconstantinou.github.io/uk-tutors-directory/og-image.png">
  
  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:url" content="https://nickconstantinou.github.io/uk-tutors-directory/">
  <meta name="twitter:title" content="UK Tutor Directory | Find the Perfect Tutor">
  <meta name="twitter:description" content="Verified UK tutors. All subjects. All levels. No fees for parents.">
  <meta name="twitter:image" content="https://nickconstantinou.github.io/uk-tutors-directory/og-image.png">
  
  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="/favicon.ico">
  
  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  
  <!-- Structured Data -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "WebSite",
    "name": "UK Tutor Directory",
    "url": "https://nickconstantinou.github.io/uk-tutors-directory/",
    "description": "Find verified UK tutors for all subjects and levels. No fees for parents.",
    "potentialAction": {
      "@type": "SearchAction",
      "target": "https://nickconstantinou.github.io/uk-tutors-directory/?q={search_term_string}",
      "query-input": "required name=search_term_string"
    }
  }
  </script>

  <style>
    /* ... existing styles ... */
  </style>
</head>
```

---

## 4. list.html - Complete <head> Fix

```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- Primary Meta Tags -->
  <title>List Your Tutoring Services | UK Tutor Directory</title>
  <meta name="title" content="List Your Tutoring Services | UK Tutor Directory">
  <meta name="description" content="List your tutoring services on the UK Tutor Directory. Get more students. No fees for listing. Join verified UK tutors today.">
  <link rel="canonical" href="https://nickconstantinou.github.io/uk-tutors-directory/list.html">
  
  <!-- Open Graph -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://nickconstantinou.github.io/uk-tutors-directory/list.html">
  <meta property="og:title" content="List Your Tutoring Services | UK Tutor Directory">
  <meta property="og:description" content="Get more students. No fees for listing. Join verified UK tutors today.">
  <meta property="og:image" content="https://nickconstantinou.github.io/uk-tutors-directory/og-image.png">
  
  <!-- Twitter -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="List Your Tutoring Services | UK Tutor Directory">
  <meta name="twitter:description" content="Get more students. No fees for listing.">

  <!-- Structured Data -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "EducationalOccupationalOrganization",
    "name": "UK Tutor Directory",
    "url": "https://nickconstantinou.github.io/uk-tutors-directory/",
    "description": "Directory for listing tutoring services in the UK"
  }
  </script>

  <!-- Fonts & Styles -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
  
  <style>
    /* ... existing styles ... */
  </style>
</head>
```

---

## 5. FAQ Section to Add to index.html

Add before the footer:

```html
<section class="faq" style="padding: 60px 0; background: var(--bg-alt);">
  <div class="container">
    <h2 style="text-align: center; margin-bottom: 32px; font-size: 32px;">Frequently Asked Questions</h2>
    <div style="max-width: 700px; margin: 0 auto;">
      <details style="background: white; padding: 20px; border-radius: 8px; margin-bottom: 16px; border: 1px solid var(--border);">
        <summary style="font-weight: 600; cursor: pointer;">How much do UK tutors charge?</summary>
        <p style="margin-top: 12px; color: var(--text-muted);">UK tutors typically charge £30-50 per hour for GCSE level, and £40-60 for A-Level. Prices vary by location, subject, and tutor experience.</p>
      </details>
      <details style="background: white; padding: 20px; border-radius: 8px; margin-bottom: 16px; border: 1px solid var(--border);">
        <summary style="font-weight: 600; cursor: pointer;">Are your tutors verified?</summary>
        <p style="margin-top: 12px; color: var(--text-muted);">Yes, all tutors in our directory are verified for qualifications, experience, and background checks.</p>
      </details>
      <details style="background: white; padding: 20px; border-radius: 8px; margin-bottom: 16px; border: 1px solid var(--border);">
        <summary style="font-weight: 600; cursor: pointer;">Is it free for parents?</summary>
        <p style="margin-top: 12px; color: var(--text-muted);">Yes, completely free for parents. We charge tutors nothing to be listed in our directory.</p>
      </details>
    </div>
  </div>
</section>
```

---

## 6. Fix Avatar Alt Tags (in tutor cards)

Find this line:
```html
<div class="tutor-avatar">SM</div>
```

Replace with:
```html
<div class="tutor-avatar" aria-label="Sarah Mitchell profile photo">SM</div>
```

Or better - use an actual img tag:
```html
<img class="tutor-avatar" src="path-to-avatar.jpg" alt="Sarah Mitchell profile photo">
```
