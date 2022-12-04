-- Look at the month of January 2001
-- Count how many store purchases occurred
-- where the item cost more than 20% of the average purchase price in the category
-- rollup the count by the home state of the customer making the purchase
-- and filter out any states where the count is < 10


SELECT 
  c_customer_sk
  , c_customer_id
  , c_first_name
  , c_last_name
  , ss_sold_date_sk
  , d_date
  , i_item_sk
  , i_category
  , ca.
FROM customer_address a ,
     customer c ,
     store_sales s ,
     date_dim d ,
     item i
WHERE a.ca_address_sk = c.c_current_addr_sk
  AND c.c_customer_sk = s.ss_customer_sk
  AND s.ss_sold_date_sk = d.d_date_sk
  AND s.ss_item_sk = i.i_item_sk
  AND d.d_month_seq =
    (SELECT DISTINCT (d_month_seq)
     FROM date_dim
     WHERE d_year = 2001
       AND d_moy = 1 )
  AND i.i_current_price > 1.2 *
    (SELECT avg(j.i_current_price)
     FROM item j
     WHERE j.i_category = i.i_category)
     AND a.ca_state is null
LIMIT 100;

