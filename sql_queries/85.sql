
SELECT SUBSTRING(r_reason_desc,1,20) ,
       avg(ws_quantity) avg1,
       avg(wr_refunded_cash) avg2,
       avg(wr_fee)
FROM web_sales,
     web_returns,
     web_page,
     customer_demographics cd1,
     customer_demographics cd2,
     customer_address,
     date_dim,
     reason
WHERE ws_web_page_sk = wp_web_page_sk
  AND ws_item_sk = wr_item_sk
  AND ws_order_number = wr_order_number
  AND ws_sold_date_sk = d_date_sk
  AND d_year = 2000
  AND cd1.cd_demo_sk = wr_refunded_cdemo_sk
  AND cd2.cd_demo_sk = wr_returning_cdemo_sk
  AND ca_address_sk = wr_refunded_addr_sk
  AND r_reason_sk = wr_reason_sk
  AND ( ( cd1.cd_marital_status = 'M'
         AND cd1.cd_marital_status = cd2.cd_marital_status
         AND cd1.cd_education_status = 'Advanced Degree'
         AND cd1.cd_education_status = cd2.cd_education_status
         AND ws_sales_price BETWEEN 100.00 AND 150.00 )
       OR ( cd1.cd_marital_status = 'S'
           AND cd1.cd_marital_status = cd2.cd_marital_status
           AND cd1.cd_education_status = 'College'
           AND cd1.cd_education_status = cd2.cd_education_status
           AND ws_sales_price BETWEEN 50.00 AND 100.00 )
       OR ( cd1.cd_marital_status = 'W'
           AND cd1.cd_marital_status = cd2.cd_marital_status
           AND cd1.cd_education_status = '2 yr Degree'
           AND cd1.cd_education_status = cd2.cd_education_status
           AND ws_sales_price BETWEEN 150.00 AND 200.00 ) )
  AND ( ( ca_country = 'United States'
         AND ca_state IN ('IN',
                          'OH',
                          'NJ')
         AND ws_net_profit BETWEEN 100 AND 200)
       OR ( ca_country = 'United States'
           AND ca_state IN ('WI',
                            'CT',
                            'KY')
           AND ws_net_profit BETWEEN 150 AND 300)
       OR ( ca_country = 'United States'
           AND ca_state IN ('LA',
                            'IA',
                            'AR')
           AND ws_net_profit BETWEEN 50 AND 250) )
GROUP BY r_reason_desc
ORDER BY SUBSTRING(r_reason_desc,1,20) ,
         avg(ws_quantity) ,
         avg(wr_refunded_cash) ,
         avg(wr_fee)
LIMIT 100;

-- This is the compiled Malloy query. Running it in the DuckDB CLI works as expected.
SELECT 
   substring(reason_0."r_reason_desc",1,20) as "rsn",
   AVG(web_sales."ws_quantity") as "avg1",
   AVG(web_returns_0."wr_refunded_cash") as "avg2",
   AVG(web_returns_0."wr_fee") as "avg3"
FROM web_sales as web_sales
LEFT JOIN web_returns AS web_returns_0
  ON (web_sales."ws_item_sk"=web_returns_0."wr_item_sk")and(web_sales."ws_order_number"=web_returns_0."wr_order_number")
LEFT JOIN reason AS reason_0
  ON reason_0."r_reason_sk"=web_returns_0."wr_reason_sk"
LEFT JOIN customer_demographics AS refunded_cdemo_0
  ON web_returns_0."wr_refunded_cdemo_sk"=refunded_cdemo_0."cd_demo_sk"
LEFT JOIN customer_demographics AS returning_cdemo_0
  ON web_returns_0."wr_returning_cdemo_sk"=returning_cdemo_0."cd_demo_sk"
LEFT JOIN customer_address AS refunded_addr_0
  ON refunded_addr_0."ca_address_sk"=web_returns_0."wr_refunded_addr_sk"
LEFT JOIN date_dim AS date_dim_0
  ON date_dim_0."d_date_sk"=web_sales."ws_sold_date_sk"
LEFT JOIN web_page AS web_page_0
  ON web_page_0."wp_web_page_sk"=web_sales."ws_web_page_sk"
WHERE (((date_dim_0."d_year"=2000)and((((((((((refunded_cdemo_0."cd_marital_status"='M')and(refunded_cdemo_0."cd_marital_status"=returning_cdemo_0."cd_marital_status"))and(refunded_cdemo_0."cd_education_status"='Advanced Degree'))and(refunded_cdemo_0."cd_marital_status"=returning_cdemo_0."cd_marital_status"))and(web_sales."ws_sales_price">=100))and(web_sales."ws_sales_price"<=150)))or(((((((refunded_cdemo_0."cd_marital_status"='S')and(refunded_cdemo_0."cd_marital_status"=returning_cdemo_0."cd_marital_status"))and(refunded_cdemo_0."cd_education_status"='College'))and(refunded_cdemo_0."cd_marital_status"=returning_cdemo_0."cd_marital_status"))and(web_sales."ws_sales_price">=50))and(web_sales."ws_sales_price"<=100))))or(((((((refunded_cdemo_0."cd_marital_status"='W')and(refunded_cdemo_0."cd_marital_status"=returning_cdemo_0."cd_marital_status"))and(refunded_cdemo_0."cd_education_status"='2 yr Degree'))and(refunded_cdemo_0."cd_marital_status"=returning_cdemo_0."cd_marital_status"))and(web_sales."ws_sales_price">=150))and(web_sales."ws_sales_price"<=200))))))and((((((((refunded_addr_0."ca_country"='United States')and(((refunded_addr_0."ca_state"='IN')or((refunded_addr_0."ca_state"='OH')or(refunded_addr_0."ca_state"='NJ')))))and(web_sales."ws_net_profit">=100))and(web_sales."ws_net_profit"<=200)))or(((((refunded_addr_0."ca_country"='United States')and(((refunded_addr_0."ca_state"='WI')or((refunded_addr_0."ca_state"='CT')or(refunded_addr_0."ca_state"='KY')))))and(web_sales."ws_net_profit">=150))and(web_sales."ws_net_profit"<=300))))or(((((refunded_addr_0."ca_country"='United States')and(((refunded_addr_0."ca_state"='LA')or((refunded_addr_0."ca_state"='IA')or(refunded_addr_0."ca_state"='AR')))))and(web_sales."ws_net_profit">=50))and(web_sales."ws_net_profit"<=250))))))and(web_page_0."wp_web_page_sk" IS NOT NULL)
GROUP BY 1
ORDER BY 1 ASC NULLS LAST
LIMIT 100
;
