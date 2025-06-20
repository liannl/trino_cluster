
Scale the number of workers into the Trino cluster:

```bash
docker-compose up --scale trino-worker=3 -d
```

```sql
trino> select * from system.runtime.nodes;
```