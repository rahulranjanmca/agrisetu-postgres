# Use official PostGIS image with PostgreSQL 17 (Alpine-based)
# Make sure this tag actually exists on Docker Hub
FROM postgis/postgis:17-3.4

LABEL maintainer="you@example.com"
LABEL description="PostgreSQL 17 with PostGIS, pgvector, and text search extensions for Agrisetu"

# Update package list
RUN apt-get update

# Install pgvector extension
RUN apt-get install -y --no-install-recommends postgresql-17-pgvector

# Install postgres contrib extensions
#RUN apt-get install -y --no-install-recommends postgresql-17-contrib

# Clean up apt cache
RUN rm -rf /var/lib/apt/lists/*

COPY docker/initdb /docker-entrypoint-initdb.d
