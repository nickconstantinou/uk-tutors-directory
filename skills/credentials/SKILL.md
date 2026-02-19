---
name: credentials
description: Securely store and retrieve API keys and secrets. Keys are stored in /home/openclaw/.openclaw/credentials/ (outside workspace for security).
metadata:
  {
    "openclaw":
      {
        "emoji": "🔐",
      },
  }
---

# Credentials - Secure API Key Storage

Store API keys and secrets outside the workspace for security.

## Storage Location

All credentials go in: `/home/openclaw/.openclaw/credentials/`

This is **outside** the workspace so keys don't get committed to git.

## Adding a New Credential

```bash
# Create JSON file for the service
mkdir -p /home/openclaw/.openclaw/credentials

# Store your key
echo '{"api_key": "YOUR_KEY_HERE"}' > /home/openclaw/.openclaw/credentials/service-name.json
```

## Credential Files

| Service | File |
|---------|------|
| Supabase | `supabase.json` |
| Outscraper | `outscraper.json` |
| Tavily | `tavily.json` |

### Supabase Structure

```json
{
  "exam_pulse_marketing": {
    "ref": "araqigsimkjsmwhnjesv",
    "url": "https://araqigsimkjsmwhnjesv.supabase.co",
    "anon_key": "eyJhbGci... (JWT format for REST API)",
    "service_key": "sbp_... (for Management API)"
  }
}
```

**Key insight:** Supabase has two APIs:
- REST API (uses anon key) - for client apps
- Management API (uses service key) - for server/admin operations

## Retrieving in Code

```python
import json

def get_credential(service: str) -> dict:
    """Load credentials for a service."""
    with open(f'/home/openclaw/.openclaw/credentials/{service}.json') as f:
        return json.load(f)

# Usage
creds = get_credential('outscraper')
api_key = creds['api_key']
```

```bash
# Or via shell
API_KEY=$(cat /home/openclaw/.openclaw/credentials/outscraper.json | jq -r '.api_key')
```

## Adding to Skills

When creating a new skill that needs API keys:

1. **Don't** put keys in skill files
2. **Do** reference the credentials folder:
   ```markdown
   ## Credentials
   
   Stored in: `/home/openclaw/.openclaw/credentials/service-name.json`
   ```

3. **Document** required fields in skill:
   ```json
   { "api_key": "your key" }
   ```

## Security Rules

- Never commit credentials to git
- Never paste keys in chat
- Use this folder for all API keys
- Skills reference credentials, not contain them
