WITH 

     wsr AS
  (SELECT web_site_id,
          sum(sales_price) AS sales,
          sum(profit) AS profit,
          sum(return_amt) AS returns_,
          sum(net_loss) AS profit_loss
   FROM
     (SELECT ws_web_site_sk AS wsr_web_site_sk,
             ws_sold_date_sk AS date_sk,
             ws_ext_sales_price AS sales_price,
             ws_net_profit AS profit,
             cast(0 AS decimal(7,2)) AS return_amt,
             cast(0 AS decimal(7,2)) AS net_loss
      FROM web_sales
      UNION ALL SELECT ws_web_site_sk AS wsr_web_site_sk,
                       wr_returned_date_sk AS date_sk,
                       cast(0 AS decimal(7,2)) AS sales_price,
                       cast(0 AS decimal(7,2)) AS profit,
                       wr_return_amt AS return_amt,
                       wr_net_loss AS net_loss
      FROM web_returns
      LEFT OUTER JOIN web_sales ON (wr_item_sk = ws_item_sk
                                    AND wr_order_number = ws_order_number) ) salesreturns,
        date_dim,
        web_site
   WHERE date_sk = d_date_sk
     AND d_date BETWEEN cast('2000-08-23' AS date) AND cast('2000-09-06' AS date)
     AND wsr_web_site_sk = web_site_sk
   GROUP BY web_site_id)

SELECT channel ,
       id ,
       sum(sales) AS sales ,
       sum(returns_) AS returns_ ,
       sum(profit) AS profit
FROM
  (SELECT 'web channel' AS channel ,
                    concat('web_site', web_site_id) AS id ,
                    sales ,
                    returns_ ,
                    (profit - profit_loss) AS profit
   FROM wsr ) x
GROUP BY ROLLUP (channel,
                 id)
ORDER BY channel NULLS FIRST,
         id NULLS FIRST
LIMIT 100;
