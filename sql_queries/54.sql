-- Pretty sure this query has an error in it.
-- Join condition contains a fan-out
-- The join on ca_county = s_county and ca_state = s_state
-- Some orders are counted more than once

WITH my_customers AS
-- Find customers who purchased items in 'Women' and 'maternity' on catalog or web
  (SELECT DISTINCT c_customer_sk,
                   c_current_addr_sk
   FROM
     (SELECT cs_sold_date_sk sold_date_sk,
             cs_bill_customer_sk customer_sk,
             cs_item_sk item_sk
      FROM catalog_sales
      UNION ALL SELECT ws_sold_date_sk sold_date_sk,
                       ws_bill_customer_sk customer_sk,
                       ws_item_sk item_sk
      FROM web_sales) cs_or_ws_sales,
        item,
        date_dim,
        customer
   WHERE sold_date_sk = d_date_sk
     AND item_sk = i_item_sk
     AND i_category = 'Women'
     AND i_class = 'maternity'
     AND c_customer_sk = cs_or_ws_sales.customer_sk
     AND d_moy = 12
     AND d_year = 1998 ),

-- Get store revenue for the above customers
-- For all stores in the same state/county as the state/county where they
-- resided when they made the above purchases
    , my_revenue_0 AS
  (SELECT c_customer_sk,
          ss_ext_sales_price,
          ca_county,
          ca_state
   FROM my_customers,
        store_sales,
        customer_address,
        store,
        date_dim
   WHERE c_current_addr_sk = ca_address_sk
     AND ca_county = s_county
     AND ca_state = s_state
     AND ss_sold_date_sk = d_date_sk
     AND c_customer_sk = ss_customer_sk
     AND d_month_seq BETWEEN 1188 AND 1190
    ) 
    
-- Had to fix fanout bug in here by adding SUM(DISTINCT ...)
    , my_revenue AS (
      SELECT
        c_customer_sk,
        sum(distinct ss_ext_sales_price) as revenue
      FROM my_revenue_0
      GROUP BY c_customer_sk
    )
    
    , segments AS
  (SELECT cast(round(revenue/50) AS int) AS SEGMENT
   FROM my_revenue)
SELECT SEGMENT,
       count(*) AS num_customers,
       SEGMENT*50 AS segment_base
FROM segments
GROUP BY SEGMENT
ORDER BY SEGMENT NULLS FIRST,
         num_customers NULLS FIRST,
         segment_base
LIMIT 100;

