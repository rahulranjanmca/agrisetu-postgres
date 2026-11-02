# PostgreSQL + PostGIS + pgvector + Text Search

Docker image providing:

- PostgreSQL 16
- PostGIS (spatial)
- `pgvector` (vector similarity search)
- Text search helpers (`pg_trgm`, `fuzzystrmatch`)
- Sample table + indexes for quick testing

## Usage

### Docker Compose

```bash
docker compose up --build -d
