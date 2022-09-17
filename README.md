# PostgreSQL

## Additional installed extensions:
- pg_repack

## pg_repack 
postgresql.conf
```json
shared_preload_libraries = 'pg_repack'   # (change requires restart)
```

psql
```sql
\c db_name
CREATE EXTENSION pg_repack
```
