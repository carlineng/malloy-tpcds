
To load data into DuckDB:

```
.read D:/tpcds/app/tools/tpcds.sql
copy call_center from 'd:/tpcds/data/call_center_001.dat' WITH (HEADER 0, DELIMITER '|');
copy catalog_page from 'd:/tpcds/data/catalog_page_001.dat' WITH (HEADER 0, DELIMITER '|');
copy catalog_returns from 'd:/tpcds/data/catalog_returns_001.dat' WITH (HEADER 0, DELIMITER '|');
copy catalog_sales from 'd:/tpcds/data/catalog_sales_001.dat' WITH (HEADER 0, DELIMITER '|');
copy customer from 'd:/tpcds/data/customer_001.dat' WITH (HEADER 0, DELIMITER '|');
copy customer_address from 'd:/tpcds/data/customer_address_001.dat' WITH (HEADER 0, DELIMITER '|');
copy customer_demographics from 'd:/tpcds/data/customer_demographics_001.dat' WITH (HEADER 0, DELIMITER '|');
copy date_dim from 'd:/tpcds/data/date_dim_001.dat' WITH (HEADER 0, DELIMITER '|');
copy dbgen_version from 'd:/tpcds/data/dbgen_version_001.dat' WITH (HEADER 0, DELIMITER '|');
copy household_demographics from 'd:/tpcds/data/household_demographics_001.dat' WITH (HEADER 0, DELIMITER '|');
copy income_band from 'd:/tpcds/data/income_band_001.dat' WITH (HEADER 0, DELIMITER '|');
copy inventory from 'd:/tpcds/data/inventory_001.dat' WITH (HEADER 0, DELIMITER '|');
copy item from 'd:/tpcds/data/item_001.dat' WITH (HEADER 0, DELIMITER '|');
copy promotion from 'd:/tpcds/data/promotion_001.dat' WITH (HEADER 0, DELIMITER '|');
copy reason from 'd:/tpcds/data/reason_001.dat' WITH (HEADER 0, DELIMITER '|');
copy ship_mode from 'd:/tpcds/data/ship_mode_001.dat' WITH (HEADER 0, DELIMITER '|');
copy store from 'd:/tpcds/data/store_001.dat' WITH (HEADER 0, DELIMITER '|');
copy store_returns from 'd:/tpcds/data/store_returns_001.dat' WITH (HEADER 0, DELIMITER '|');
copy store_sales from 'd:/tpcds/data/store_sales_001.dat' WITH (HEADER 0, DELIMITER '|');
copy time_dim from 'd:/tpcds/data/time_dim_001.dat' WITH (HEADER 0, DELIMITER '|');
copy warehouse from 'd:/tpcds/data/warehouse_001.dat' WITH (HEADER 0, DELIMITER '|');
copy web_page from 'd:/tpcds/data/web_page_001.dat' WITH (HEADER 0, DELIMITER '|');
copy web_returns from 'd:/tpcds/data/web_returns_001.dat' WITH (HEADER 0, DELIMITER '|');
copy web_sales from 'd:/tpcds/data/web_sales_001.dat' WITH (HEADER 0, DELIMITER '|');
copy web_site from 'd:/tpcds/data/web_site_001.dat' WITH (HEADER 0, DELIMITER '|');
```
