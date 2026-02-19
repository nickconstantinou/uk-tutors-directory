-- UK Tutors Directory Migration
-- Run this in Supabase SQL Editor: https://supabase.com/dashboard/project/araqigsimkjsmwhnjesv/sql

-- Create the uk_tutors schema
CREATE SCHEMA IF NOT EXISTS uk_tutors;

-- Create tutors table
CREATE TABLE IF NOT EXISTS uk_tutors.tutors (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  phone TEXT,
  website TEXT,
  location TEXT,
  rating NUMERIC,
  subjects TEXT,
  levels TEXT,
  price TEXT,
  trial TEXT,
  format TEXT,
  verified BOOLEAN DEFAULT false,
  source TEXT DEFAULT 'google_maps',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Create leads table
CREATE TABLE IF NOT EXISTS uk_tutors.leads (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  tutor_id UUID REFERENCES uk_tutors(id),
  parent_name TEXT,
  email TEXT,
  phone TEXT,
  subject TEXT,
  level TEXT,
  message TEXT,
  status TEXT DEFAULT 'new',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable RLS (optional - can add later)
-- ALTER TABLE uk_tutors.tutors ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE uk_tutors.leads ENABLE ROW LEVEL SECURITY;

-- Expose uk_tutors schema in API
-- Note: This is done in Settings → API → Exposed Schemas
-- Make sure "uk_tutors" is checked alongside "public"
