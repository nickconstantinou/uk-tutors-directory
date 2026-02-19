#!/bin/bash
# SEO Fix Automation Script
# Run from the exam-pulse-marketing directory

echo "🔧 ExamPulse SEO Fix Script"
echo "============================"

# Create images directory if it doesn't exist
mkdir -p images

# Create sitemap.xml
echo "📄 Creating sitemap.xml..."
cat > sitemap.xml << 'EOF'
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
EOF

# Create robots.txt
echo "📄 Creating robots.txt..."
cat > robots.txt << 'EOF'
User-agent: *
Allow: /

Sitemap: https://nickconstantinou.github.io/exam-pulse-marketing/sitemap.xml
EOF

echo "✅ Created sitemap.xml and robots.txt"

# Add meta tags to index.html using sed
# This is a simple approach - for production, manual editing recommended
echo ""
echo "⚠️  For full SEO fixes, please manually edit HTML files using QUICK-FIXES.md"
echo ""
echo "Done! Files created:"
ls -la sitemap.xml robots.txt
