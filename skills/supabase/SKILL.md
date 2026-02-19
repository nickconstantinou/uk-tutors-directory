---
name: supabase
description: Manage Supabase database for ExamPulse and UK Tutors Directory
metadata:
  {
    "openclaw":
      {
        "emoji": "🗄️",
      },
  }
---

# Supabase Management

Credentials stored in: `/home/openclaw/.openclaw/credentials/supabase.json`

**CRITICAL:** Always use the credentials file - never hardcode keys in skills or code.

## Credentials File Format

```json
{
  "exam_pulse_marketing": {
    "ref": "araqigsimkjsmwhnjesv",
    "url": "https://araqigsimkjsmwhnjesv.supabase.co",
    "anon_key": "eyJhbGci...",
    "service_key": "sbp_..."
  }
}
```

## Active Project

| Project | Ref | URL |
|---------|-----|-----|
| **ExamPulse Marketing** | araqigsimkjsmwhnjesv | https://araqigsimkjsmwhnjesv.supabase.co |

## Two API Systems

Supabase has **two** separate APIs:

### 1. REST API (for client apps)
- Endpoint: `https://{ref}.supabase.co/rest/v1/`
- Uses: **anon key** (public, safe to expose)
- Used by: Frontend websites, mobile apps

### 2. Management API (for server/admin)
- Endpoint: `https://api.supabase.com/v1/projects/{ref}/database/query`
- Uses: **service key** (secret, bypasses RLS)
- Used by: Creating schemas, tables, admin operations

## API Key Formats

| Type | Format | Which API | Use |
|------|--------|-----------|-----|
| Anon | `eyJhbGci...` JWT | REST API | Client-side queries |
| Service | `sbp_...` | Management API | Server-side admin |
| Publishable | `sb_publishable_...` | REST (new) | Replaces anon |
| Secret | `sb_secret_...` | Management (new) | Replaces service |

**Note:** All formats should work, but use appropriate one for the API endpoint.

## Loading Credentials

```bash
# Load anon key (for REST API)
ANON_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.anon_key')

# Load service key (for Management API)
SERVICE_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.service_key')

# Load project ref
REF=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.ref')
```

## Common Operations

### Query a Table (REST API)

```bash
ANON_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.anon_key')

curl -s "https://araqigsimkjsmwhnjesv.supabase.co/rest/v1/tutors?select=name,subjects&limit=5" \
  -H "apikey: $ANON_KEY" \
  -H "Authorization: Bearer $ANON_KEY"
```

### Run SQL (Management API)

```bash
SERVICE_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.service_key')
REF="araqigsimkjsmwhnjesv"

curl -s -X POST "https://api.supabase.com/v1/projects/$REF/database/query" \
  -H "Authorization: Bearer $SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -d '{"query": "SELECT * FROM tutors LIMIT 5;"}'
```

### Create a Schema

```bash
SERVICE_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.service_key')
REF="araqigsimkjsmwhnjesv"

curl -s -X POST "https://api.supabase.com/v1/projects/$REF/database/query" \
  -H "Authorization: Bearer $SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -d '{"query": "CREATE SCHEMA IF NOT EXISTS my_schema;"}'
```

### Create a Table

```bash
SERVICE_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.service_key')
REF="araqigsimkjsmwhnjesv"

curl -s -X POST "https://api.supabase.com/v1/projects/$REF/database/query" \
  -H "Authorization: Bearer $SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -d '{"query": "CREATE TABLE my_schema.items (id UUID PRIMARY KEY DEFAULT gen_random_uuid(), name TEXT NOT NULL);"}'
```

### Insert Data

```bash
SERVICE_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.service_key')
REF="araqigsimkjsmwhnjesv"

curl -s -X POST "https://api.supabase.com/v1/projects/$REF/database/query" \
  -H "Authorization: Bearer $SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -d '{"query": "INSERT INTO tutors (name, subjects) VALUES ('\''Test Tutor'\'', ARRAY['\''Maths'\'']);"}'
```

### Grant Permissions

```bash
SERVICE_KEY=$(cat /home/openclaw/.openclaw/credentials/supabase.json | jq -r '.exam_pulse_marketing.service_key')
REF="araqigsimkjsmwhnjesv"

# Grant access to anon role
curl -s -X POST "https://api.supabase.com/v1/projects/$REF/database/query" \
  -H "Authorization: Bearer $SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -d '{"query": "GRANT USAGE ON SCHEMA public TO anon;"}'

curl -s -X POST "https://api.supabase.com/v1/projects/$REF/database/query" \
  -H "Authorization: Bearer $SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -d '{"query": "GRANT SELECT ON ALL TABLES IN SCHEMA public TO anon;"}'
```

## Custom Schemas vs Public Schema

**Problem:** Tables in custom schemas (e.g., `uk_tutors.tutors`) may not be accessible via REST API.

**Solution:** Move tables to `public` schema:

```sql
ALTER TABLE uk_tutors.tutors SET SCHEMA public;
ALTER TABLE uk_tutors.leads SET SCHEMA public;
```

This is easier than exposing custom schemas via API settings.

## Lessons Learned (Retro)

### Issue: Schema not found in REST API
- **Symptom:** `Could not find the table 'public.uk_tutors.tutors' in schema cache`
- **Cause:** Custom schemas need to be exposed in API settings OR tables moved to public
- **Fix:** `ALTER TABLE uk_tutors.tutors SET SCHEMA public;`

### Issue: Service key doesn't work with REST API
- **Symptom:** `Invalid API key` when using service key with REST endpoint
- **Cause:** Wrong API - service key is for Management API, anon key for REST API
- **Fix:** Use anon key for REST API queries

### Issue: Management API needs correct endpoint
- **Symptom:** Various errors when running SQL
- **Cause:** Using REST API endpoint for admin tasks
- **Fix:** Use `https://api.supabase.com/v1/projects/{ref}/database/query`

## Troubleshooting

### "Invalid API key" with REST API
- You're likely using service key - use anon key instead

### "Could not find the table" 
- Table is in custom schema not exposed
- Run: `ALTER TABLE schema.table SET SCHEMA public;`

### "JWT could not be decoded"
- Service key may be wrong format or expired
- Get new key from Supabase dashboard

### Need to reload schema cache
- Go to Dashboard → Settings → API → API Schema Cache → Click "Reload Schema Cache"

## Current Database Schema

### tutors table
| Column | Type | Description |
|--------|------|-------------|
| id | bigint | Primary key |
| name | text | Tutor name |
| phone | text | Phone number |
| email | text | Website/contact |
| location | text | Address |
| subjects | text[] | Subjects array |
| levels | text[] | Levels array |
| price | integer | Price per hour |
| experience | integer | Years experience |
| bio | text | Bio text |
| rating | numeric | Rating |
| reviews | integer | Review count |
| verified | boolean | Verified |
| created_at | timestamptz | Created |

### leads table
| Column | Type | Description |
|--------|------|-------------|
| id | bigint | Primary key |
| tutor_id | bigint | FK to tutors |
| parent_name | text | Parent name |
| email | text | Parent email |
| phone | text | Parent phone |
| subject | text | Subject needed |
| level | text | Year level |
| message | text | Message |
| status | text | new/contacted/converted |
| created_at | timestamptz | Created |
