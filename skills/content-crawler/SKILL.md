---
name: content-crawler
description: Crawl content sources and create blog posts
metadata:
  {
    "openclaw":
      {
        "emoji": "🕷️",
        "requires": { "bins": ["yt-dlp", "curl"] },
      },
  }
---

# Content Crawler & Blog Post Generator

Use this skill to check content sources for new content and create blog posts.

## Content Sources

See `personal-blog/CONTENT_SOURCES.md` for full list.

### Priority Sources
- **YouTube**: AI news (Limitless, AI Jason Zhao), FPL (Planet FPL, FFScout)
- **Podcasts**: Huberman Lab, Lex Fridman
- **Websites**: Hacker News, The Rundown AI

## Process

### Step 1: Check for New Content

**YouTube - Get latest videos:**
```bash
yt-dlp --flat-playlist -j "https://www.youtube.com/@PlanetFPL" | jq '.[:5]'
```

**RSS Feeds:**
```bash
curl -s "https://feeds.simplecast.com/huberman-lab" | head -50
```

**Websites with Jina AI Reader:**
```bash
# Extract clean Markdown from any URL (free, no API key)
curl -s "https://r.jina.ai/https://example.com/article"
```

Use Jina for:
- Converting articles to blog post content
- Extracting clean Markdown from websites
- Research content gathering

### Step 2: Download & Transcribe

For videos/podcasts:
```bash
# Download audio
yt-dlp -x --audio-format mp3 -o "/tmp/%(title)s.%(ext)s" "VIDEO_URL"

# Get description
yt-dlp --dump-json "VIDEO_URL" > /tmp/video-info.json
```

### Step 3: Create Blog Post

Create HTML in `personal-blog/` with:
- Title from video/podcast
- Summary from description
- Key insights (bullet points)
- Links back to original
- Proper styling matching blog design

### Step 4: Publish

1. Commit to GitHub
2. GitHub Pages auto-deploys
3. Include link in daily digest

## Craw

**Cl4AI Integrationrawl4AI** (Docker) - AI-friendly web crawler for clean Markdown:

```bash
# Start Crawl4AI (if not running)
docker run -d -p 8000:8000 --name crawl4ai unclecode/crawl4ai:latest

# Health check
curl http://localhost:8000/health

# Crawl URL to Markdown
curl -s -X POST http://localhost:8000/crawl \
  -H "Content-Type: application/json" \
  -d '{"url": "https://techcrunch.com", "markdown": true}'
```

Use Crawl4AI when:
- Converting articles to blog post content
- Extracting clean Markdown from websites
- Deep crawling documentation
- RAG pipeline content preparation

## Cron Job

Set up daily at 7am to:
1. Check each source for new content
2. Download & summarize top content
3. Create blog post if relevant
4. Report new posts in digest

## Environment

- `TAVILY_API_KEY` - For searching latest content
- `yt-dlp` - Download YouTube videos/audio
- `curl` - HTTP requests
- `Crawl4AI` (Docker port 8000) - Web content extraction
- **MiniMax** - For AI summarization
