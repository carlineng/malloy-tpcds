TPC-DS queries are run using DuckDB:
- https://duckdb.org/

Queries are taken from DuckDB's `extensions` directory:
- https://github.com/duckdb/duckdb/tree/45d857191be915d3a38c83b75a42a945ba04fe9d/extension/tpcds/dsdgen/queries

Data is from Altinity's TPC-DS repository:
- https://github.com/Altinity/tpc-ds/tree/master/data

To get started:
- Get data from the Altinity repo linked above
- Unzip the archive in the `data/` subfolder
- Open DuckDB shell, load the TPC-DS schema into duckdb:

```
.read tpcds_schema.sql
```

- Import data into DuckDB

```
.read load.sql
```

- Export files to Parquet

```
.read export.sql
```

- Optional: run `EXPORT DATABASE 'data/duckdb'` to export the full DB for easier use next time
- Optional: next time you open DuckDB, you can simply run `IMPORT DATABASE 'data/duckdb'`

