CREATE TABLE dbgen_version
(
    dv_version                String,
    dv_create_date            Date,
    dv_create_time            String,
    dv_cmdline_args           String
);

CREATE TABLE customer_address
(
    ca_address_sk             Bigint,
    ca_address_id             String,
    ca_street_number          String,
    ca_street_name            String,
    ca_street_type            String,
    ca_suite_number           String,
    ca_city                   String,
    ca_county                 String,
    ca_state                  String,
    ca_zip                    String,
    ca_country                String,
    ca_gmt_offset             Double,
    ca_location_type          String
)
;

CREATE TABLE customer_demographics
(
    cd_demo_sk                Bigint,
    cd_gender                 String,
    cd_marital_status         String,
    cd_education_status       String,
    cd_purchase_estimate      Bigint,
    cd_credit_rating          String,
    cd_dep_count              Bigint,
    cd_dep_employed_count     Bigint,
    cd_dep_college_count      Bigint
)
;

CREATE TABLE date_dim
(
    d_date_sk                 Bigint,
    d_date_id                 String,
    d_date                    Date,
    d_month_seq               Bigint,
    d_week_seq                Bigint,
    d_quarter_seq             Bigint,
    d_year                    Bigint,
    d_dow                     Bigint,
    d_moy                     Bigint,
    d_dom                     Bigint,
    d_qoy                     Bigint,
    d_fy_year                 Bigint,
    d_fy_quarter_seq          Bigint,
    d_fy_week_seq             Bigint,
    d_day_name                String,
    d_quarter_name            String,
    d_holiday                 String,
    d_weekend                 String,
    d_following_holiday       String,
    d_first_dom               Bigint,
    d_last_dom                Bigint,
    d_same_day_ly             Bigint,
    d_same_day_lq             Bigint,
    d_current_day             String,
    d_current_week            String,
    d_current_month           String,
    d_current_quarter         String,
    d_current_year            String
)
;

CREATE TABLE warehouse
(
    w_warehouse_sk            Bigint,
    w_warehouse_id            String,
    w_warehouse_name          String,
    w_warehouse_sq_ft         Bigint,
    w_street_number           String,
    w_street_name             String,
    w_street_type             String,
    w_suite_number            String,
    w_city                    String,
    w_county                  String,
    w_state                   String,
    w_zip                     String,
    w_country                 String,
    w_gmt_offset              Double
)
;

CREATE TABLE ship_mode
(
    sm_ship_mode_sk           Bigint,
    sm_ship_mode_id           String,
    sm_type                   String,
    sm_code                   String,
    sm_carrier                String,
    sm_contract               String
)
;

CREATE TABLE time_dim
(
    t_time_sk                 Bigint,
    t_time_id                 String,
    t_time                    Bigint,
    t_hour                    Bigint,
    t_minute                  Bigint,
    t_second                  Bigint,
    t_am_pm                   String,
    t_shift                   String,
    t_sub_shift               String,
    t_meal_time               String
)
;

CREATE TABLE reason
(
    r_reason_sk               Bigint,
    r_reason_id               String,
    r_reason_desc             String
)
;

CREATE TABLE income_band
(
    ib_income_band_sk         Bigint,
    ib_lower_bound            Bigint,
    ib_upper_bound            Bigint
)
;

CREATE TABLE item
(
    i_item_sk                 Bigint,
    i_item_id                 String,
    i_rec_start_date          Date,
    i_rec_end_date            Date,
    i_item_desc               String,
    i_current_price           Double,
    i_wholesale_cost          Double,
    i_brand_id                Bigint,
    i_brand                   String,
    i_class_id                Bigint,
    i_class                   String,
    i_category_id             Bigint,
    i_category                String,
    i_manufact_id             Bigint,
    i_manufact                String,
    i_size                    String,
    i_formulation             String,
    i_color                   String,
    i_units                   String,
    i_container               String,
    i_manager_id              Bigint,
    i_product_name            String
)
;

CREATE TABLE store
(
    s_store_sk                Bigint,
    s_store_id                String,
    s_rec_start_date          Date,
    s_rec_end_date            Date,
    s_closed_date_sk          Bigint,
    s_store_name              String,
    s_number_employees        Bigint,
    s_floor_space             Bigint,
    s_hours                   String,
    s_manager                 String,
    s_market_id               Bigint,
    s_geography_class         String,
    s_market_desc             String,
    s_market_manager          String,
    s_division_id             Bigint,
    s_division_name           String,
    s_company_id              Bigint,
    s_company_name            String,
    s_street_number           String,
    s_street_name             String,
    s_street_type             String,
    s_suite_number            String,
    s_city                    String,
    s_county                  String,
    s_state                   String,
    s_zip                     String,
    s_country                 String,
    s_gmt_offset              Double,
    s_tax_precentage          Double
)
;

CREATE TABLE call_center
(
    cc_call_center_sk         Bigint,
    cc_call_center_id         String,
    cc_rec_start_date         Date,
    cc_rec_end_date           Date,
    cc_closed_date_sk         Bigint,
    cc_open_date_sk           Bigint,
    cc_name                   String,
    cc_class                  String,
    cc_employees              Bigint,
    cc_sq_ft                  Bigint,
    cc_hours                  String,
    cc_manager                String,
    cc_mkt_id                 Bigint,
    cc_mkt_class              String,
    cc_mkt_desc               String,
    cc_market_manager         String,
    cc_division               Bigint,
    cc_division_name          String,
    cc_company                Bigint,
    cc_company_name           String,
    cc_street_number          String,
    cc_street_name            String,
    cc_street_type            String,
    cc_suite_number           String,
    cc_city                   String,
    cc_county                 String,
    cc_state                  String,
    cc_zip                    String,
    cc_country                String,
    cc_gmt_offset             Double,
    cc_tax_percentage         Double
)
;

CREATE TABLE customer
(
    c_customer_sk             Bigint,
    c_customer_id             String,
    c_current_cdemo_sk        Bigint,
    c_current_hdemo_sk        Bigint,
    c_current_addr_sk         Bigint,
    c_first_shipto_date_sk    Bigint,
    c_first_sales_date_sk     Bigint,
    c_salutation              String,
    c_first_name              String,
    c_last_name               String,
    c_preferred_cust_flag     String,
    c_birth_day               Bigint,
    c_birth_month             Bigint,
    c_birth_year              Bigint,
    c_birth_country           String,
    c_login                   String,
    c_email_address           String,
    c_last_review_date        String
)
;

CREATE TABLE web_site
(
    web_site_sk               Bigint,
    web_site_id               String,
    web_rec_start_date        Date,
    web_rec_end_date          Date,
    web_name                  String,
    web_open_date_sk          Bigint,
    web_close_date_sk         Bigint,
    web_class                 String,
    web_manager               String,
    web_mkt_id                Bigint,
    web_mkt_class             String,
    web_mkt_desc              String,
    web_market_manager        String,
    web_company_id            Bigint,
    web_company_name          String,
    web_street_number         String,
    web_street_name           String,
    web_street_type           String,
    web_suite_number          String,
    web_city                  String,
    web_county                String,
    web_state                 String,
    web_zip                   String,
    web_country               String,
    web_gmt_offset            Double,
    web_tax_percentage        Double
)
;

CREATE TABLE store_returns
(
    sr_returned_date_sk       Bigint,
    sr_return_time_sk         Bigint,
    sr_item_sk                Bigint,
    sr_customer_sk            Bigint,
    sr_cdemo_sk               Bigint,
    sr_hdemo_sk               Bigint,
    sr_addr_sk                Bigint,
    sr_store_sk               Bigint,
    sr_reason_sk              Bigint,
    sr_ticket_number          Bigint,
    sr_return_quantity        Bigint,
    sr_return_amt             Double,
    sr_return_tax             Double,
    sr_return_amt_inc_tax     Double,
    sr_fee                    Double,
    sr_return_ship_cost       Double,
    sr_refunded_cash          Double,
    sr_reversed_charge        Double,
    sr_store_credit           Double,
    sr_net_loss               Double
)
;

CREATE TABLE household_demographics
(
    hd_demo_sk                Bigint,
    hd_income_band_sk         Bigint,
    hd_buy_potential          String,
    hd_dep_count              Bigint,
    hd_vehicle_count          Bigint
)
;

CREATE TABLE web_page
(
    wp_web_page_sk            Bigint,
    wp_web_page_id            String,
    wp_rec_start_date         Date,
    wp_rec_end_date           Date,
    wp_creation_date_sk       Bigint,
    wp_access_date_sk         Bigint,
    wp_autogen_flag           String,
    wp_customer_sk            Bigint,
    wp_url                    String,
    wp_type                   String,
    wp_char_count             Bigint,
    wp_link_count             Bigint,
    wp_image_count            Bigint,
    wp_max_ad_count           Bigint
)
;

CREATE TABLE promotion
(
    p_promo_sk                Bigint,
    p_promo_id                String,
    p_start_date_sk           Bigint,
    p_end_date_sk             Bigint,
    p_item_sk                 Bigint,
    p_cost                    Double,
    p_response_target         Bigint,
    p_promo_name              String,
    p_channel_dmail           String,
    p_channel_email           String,
    p_channel_catalog         String,
    p_channel_tv              String,
    p_channel_radio           String,
    p_channel_press           String,
    p_channel_event           String,
    p_channel_demo            String,
    p_channel_details         String,
    p_purpose                 String,
    p_discount_active         String
)
;

CREATE TABLE catalog_page
(
    cp_catalog_page_sk        Bigint,
    cp_catalog_page_id        String,
    cp_start_date_sk          Bigint,
    cp_end_date_sk            Bigint,
    cp_department             String,
    cp_catalog_number         Bigint,
    cp_catalog_page_number    Bigint,
    cp_description            String,
    cp_type                   String
)
;

CREATE TABLE inventory
(
    inv_date_sk               Bigint,
    inv_item_sk               Bigint,
    inv_warehouse_sk          Bigint,
    inv_quantity_on_hand      Bigint
)
;

CREATE TABLE catalog_returns
(
    cr_returned_date_sk       Bigint,
    cr_returned_time_sk       Bigint,
    cr_item_sk                Bigint,
    cr_refunded_customer_sk   Bigint,
    cr_refunded_cdemo_sk      Bigint,
    cr_refunded_hdemo_sk      Bigint,
    cr_refunded_addr_sk       Bigint,
    cr_returning_customer_sk  Bigint,
    cr_returning_cdemo_sk     Bigint,
    cr_returning_hdemo_sk     Bigint,
    cr_returning_addr_sk      Bigint,
    cr_call_center_sk         Bigint,
    cr_catalog_page_sk        Bigint,
    cr_ship_mode_sk           Bigint,
    cr_warehouse_sk           Bigint,
    cr_reason_sk              Bigint,
    cr_order_number           Bigint,
    cr_return_quantity        Bigint,
    cr_return_amount          Double,
    cr_return_tax             Double,
    cr_return_amt_inc_tax     Double,
    cr_fee                    Double,
    cr_return_ship_cost       Double,
    cr_refunded_cash          Double,
    cr_reversed_charge        Double,
    cr_store_credit           Double,
    cr_net_loss               Double
)
;

CREATE TABLE web_returns
(
    wr_returned_date_sk       Bigint,
    wr_returned_time_sk       Bigint,
    wr_item_sk                Bigint,
    wr_refunded_customer_sk   Bigint,
    wr_refunded_cdemo_sk      Bigint,
    wr_refunded_hdemo_sk      Bigint,
    wr_refunded_addr_sk       Bigint,
    wr_returning_customer_sk  Bigint,
    wr_returning_cdemo_sk     Bigint,
    wr_returning_hdemo_sk     Bigint,
    wr_returning_addr_sk      Bigint,
    wr_web_page_sk            Bigint,
    wr_reason_sk              Bigint,
    wr_order_number           Bigint,
    wr_return_quantity        Bigint,
    wr_return_amt             Double,
    wr_return_tax             Double,
    wr_return_amt_inc_tax     Double,
    wr_fee                    Double,
    wr_return_ship_cost       Double,
    wr_refunded_cash          Double,
    wr_reversed_charge        Double,
    wr_account_credit         Double,
    wr_net_loss               Double
)
;

CREATE TABLE web_sales
(
    ws_sold_date_sk           Bigint,
    ws_sold_time_sk           Bigint,
    ws_ship_date_sk           Bigint,
    ws_item_sk                Bigint,
    ws_bill_customer_sk       Bigint,
    ws_bill_cdemo_sk          Bigint,
    ws_bill_hdemo_sk          Bigint,
    ws_bill_addr_sk           Bigint,
    ws_ship_customer_sk       Bigint,
    ws_ship_cdemo_sk          Bigint,
    ws_ship_hdemo_sk          Bigint,
    ws_ship_addr_sk           Bigint,
    ws_web_page_sk            Bigint,
    ws_web_site_sk            Bigint,
    ws_ship_mode_sk           Bigint,
    ws_warehouse_sk           Bigint,
    ws_promo_sk               Bigint,
    ws_order_number           Bigint,
    ws_quantity               Bigint,
    ws_wholesale_cost         Double,
    ws_list_price             Double,
    ws_sales_price            Double,
    ws_ext_discount_amt       Double,
    ws_ext_sales_price        Double,
    ws_ext_wholesale_cost     Double,
    ws_ext_list_price         Double,
    ws_ext_tax                Double,
    ws_coupon_amt             Double,
    ws_ext_ship_cost          Double,
    ws_net_paid               Double,
    ws_net_paid_inc_tax       Double,
    ws_net_paid_inc_ship      Double,
    ws_net_paid_inc_ship_tax  Double,
    ws_net_profit             Double
)
;

CREATE TABLE catalog_sales
(
    cs_sold_date_sk           Bigint,
    cs_sold_time_sk           Bigint,
    cs_ship_date_sk           Bigint,
    cs_bill_customer_sk       Bigint,
    cs_bill_cdemo_sk          Bigint,
    cs_bill_hdemo_sk          Bigint,
    cs_bill_addr_sk           Bigint,
    cs_ship_customer_sk       Bigint,
    cs_ship_cdemo_sk          Bigint,
    cs_ship_hdemo_sk          Bigint,
    cs_ship_addr_sk           Bigint,
    cs_call_center_sk         Bigint,
    cs_catalog_page_sk        Bigint,
    cs_ship_mode_sk           Bigint,
    cs_warehouse_sk           Bigint,
    cs_item_sk                Bigint,
    cs_promo_sk               Bigint,
    cs_order_number           Bigint,
    cs_quantity               Bigint,
    cs_wholesale_cost         Double,
    cs_list_price             Double,
    cs_sales_price            Double,
    cs_ext_discount_amt       Double,
    cs_ext_sales_price        Double,
    cs_ext_wholesale_cost     Double,
    cs_ext_list_price         Double,
    cs_ext_tax                Double,
    cs_coupon_amt             Double,
    cs_ext_ship_cost          Double,
    cs_net_paid               Double,
    cs_net_paid_inc_tax       Double,
    cs_net_paid_inc_ship      Double,
    cs_net_paid_inc_ship_tax  Double,
    cs_net_profit             Double
)
;

CREATE TABLE store_sales
(
    ss_sold_date_sk           Bigint,
    ss_sold_time_sk           Bigint,
    ss_item_sk                Bigint,
    ss_customer_sk            Bigint,
    ss_cdemo_sk               Bigint,
    ss_hdemo_sk               Bigint,
    ss_addr_sk                Bigint,
    ss_store_sk               Bigint,
    ss_promo_sk               Bigint,
    ss_ticket_number          Bigint,
    ss_quantity               Bigint,
    ss_wholesale_cost         Double,
    ss_list_price             Double,
    ss_sales_price            Double,
    ss_ext_discount_amt       Double,
    ss_ext_sales_price        Double,
    ss_ext_wholesale_cost     Double,
    ss_ext_list_price         Double,
    ss_ext_tax                Double,
    ss_coupon_amt             Double,
    ss_net_paid               Double,
    ss_net_paid_inc_tax       Double,
    ss_net_profit             Double
)
;

--copy call_center            from './data/call_center_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy catalog_page           from './data/catalog_page_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy catalog_returns        from './data/catalog_returns_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy catalog_sales          from './data/catalog_sales_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy customer               from './data/customer_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy customer_address       from './data/customer_address_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy customer_demographics  from './data/customer_demographics_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy date_dim               from './data/date_dim_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy dbgen_version          from './data/dbgen_version_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy household_demographics from './data/household_demographics_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy income_band            from './data/income_band_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy inventory              from './data/inventory_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy item                   from './data/item_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy promotion              from './data/promotion_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy reason                 from './data/reason_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy ship_mode              from './data/ship_mode_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy store                  from './data/store_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy store_returns          from './data/store_returns_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy store_sales            from './data/store_sales_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy time_dim               from './data/time_dim_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy warehouse              from './data/warehouse_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy web_page               from './data/web_page_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy web_returns            from './data/web_returns_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy web_sales              from './data/web_sales_001.dat' WITH (HEADER 0, DELIMITER '|');
--copy web_site               from './data/web_site_001.dat' WITH (HEADER 0, DELIMITER '|');
--
--copy call_center to            'data/call_center.parquet';
--copy catalog_page to           'data/catalog_page.parquet';
--copy catalog_returns to        'data/catalog_returns.parquet';
--copy catalog_sales to          'data/catalog_sales.parquet';
--copy customer to               'data/customer.parquet';
--copy customer_address to       'data/customer_address.parquet';
--copy customer_demographics to  'data/customer_demographics.parquet';
--copy date_dim to               'data/date_dim.parquet';
--copy dbgen_version to          'data/dbgen_version.parquet';
--copy household_demographics to 'data/household_demographics.parquet';
--copy income_band to            'data/income_band.parquet';
--copy inventory to              'data/inventory.parquet';
--copy item to                   'data/item.parquet';
--copy promotion to              'data/promotion.parquet';
--copy reason to                 'data/reason.parquet';
--copy ship_mode to              'data/ship_mode.parquet';
--copy store to                  'data/store.parquet';
--copy store_returns to          'data/store_returns.parquet';
--copy store_sales to            'data/store_sales.parquet';
--copy time_dim to               'data/time_dim.parquet';
--copy warehouse to              'data/warehouse.parquet';
--copy web_page to               'data/web_page.parquet';
--copy web_returns to            'data/web_returns.parquet';
--copy web_sales to              'data/web_sales.parquet';
--copy web_site to               'data/web_site.parquet';
--
