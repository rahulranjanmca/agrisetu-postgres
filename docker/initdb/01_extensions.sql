-- docker/initdb/01_extensions.sql

-- Enable spatial extension
CREATE EXTENSION IF NOT EXISTS postgis;

-- Enable vector similarity search
CREATE EXTENSION IF NOT EXISTS vector;

-- Useful for text search / similarity matching
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;

-- Make sure a default text search configuration exists
-- This is just an example: English config
ALTER SYSTEM SET default_text_search_config = 'pg_catalog.english';