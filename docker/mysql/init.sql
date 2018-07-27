SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

## DROP TABLE sales_fact_1997 IF EXISTS;
CREATE TABLE sales_fact_1997(
    product_id INTEGER NOT NULL,
    time_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    promotion_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL);
## DROP TABLE sales_fact_1998;
CREATE TABLE sales_fact_1998(
    product_id INTEGER NOT NULL,
    time_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    promotion_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL);
# # DROP TABLE sales_fact_dec_1998;
CREATE TABLE sales_fact_dec_1998(
    product_id INTEGER NOT NULL,
    time_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    promotion_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL);
# # DROP TABLE inventory_fact_1997;
CREATE TABLE inventory_fact_1997(
    product_id INTEGER NOT NULL,
    time_id INTEGER,
    warehouse_id INTEGER,
    store_id INTEGER,
    units_ordered INTEGER,
    units_shipped INTEGER,
    warehouse_sales DECIMAL(10,4),
    warehouse_cost DECIMAL(10,4),
    supply_time SMALLINT,
    store_invoice DECIMAL(10,4));
# # DROP TABLE inventory_fact_1998;
CREATE TABLE inventory_fact_1998(
    product_id INTEGER NOT NULL,
    time_id INTEGER,
    warehouse_id INTEGER,
    store_id INTEGER,
    units_ordered INTEGER,
    units_shipped INTEGER,
    warehouse_sales DECIMAL(10,4),
    warehouse_cost DECIMAL(10,4),
    supply_time SMALLINT,
    store_invoice DECIMAL(10,4));
# # DROP TABLE agg_pl_01_sales_fact_1997;
CREATE TABLE agg_pl_01_sales_fact_1997(
    product_id INTEGER NOT NULL,
    time_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    store_sales_sum DECIMAL(10,4) NOT NULL,
    store_cost_sum DECIMAL(10,4) NOT NULL,
    unit_sales_sum DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# # DROP TABLE agg_ll_01_sales_fact_1997;
CREATE TABLE agg_ll_01_sales_fact_1997(
    product_id INTEGER NOT NULL,
    time_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# # DROP TABLE agg_l_03_sales_fact_1997;
CREATE TABLE agg_l_03_sales_fact_1997(
    time_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_l_04_sales_fact_1997;
CREATE TABLE agg_l_04_sales_fact_1997(
    time_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    customer_count INTEGER NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_l_05_sales_fact_1997;
CREATE TABLE agg_l_05_sales_fact_1997(
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    promotion_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_c_10_sales_fact_1997;
CREATE TABLE agg_c_10_sales_fact_1997(
    month_of_year SMALLINT NOT NULL,
    quarter VARCHAR(30) NOT NULL,
    the_year SMALLINT NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    customer_count INTEGER NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_c_14_sales_fact_1997;
CREATE TABLE agg_c_14_sales_fact_1997(
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    promotion_id INTEGER NOT NULL,
    month_of_year SMALLINT NOT NULL,
    quarter VARCHAR(30) NOT NULL,
    the_year SMALLINT NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_lc_100_sales_fact_1997;
CREATE TABLE agg_lc_100_sales_fact_1997(
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    quarter VARCHAR(30) NOT NULL,
    the_year SMALLINT NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_c_special_sales_fact_1997;
CREATE TABLE agg_c_special_sales_fact_1997(
    product_id INTEGER NOT NULL,
    promotion_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    time_month SMALLINT NOT NULL,
    time_quarter VARCHAR(30) NOT NULL,
    time_year SMALLINT NOT NULL,
    store_sales_sum DECIMAL(10,4) NOT NULL,
    store_cost_sum DECIMAL(10,4) NOT NULL,
    unit_sales_sum DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_g_ms_pcat_sales_fact_1997;
CREATE TABLE agg_g_ms_pcat_sales_fact_1997(
    gender VARCHAR(30) NOT NULL,
    marital_status VARCHAR(30) NOT NULL,
    product_family VARCHAR(30),
    product_department VARCHAR(30),
    product_category VARCHAR(30),
    month_of_year SMALLINT NOT NULL,
    quarter VARCHAR(30) NOT NULL,
    the_year SMALLINT NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    customer_count INTEGER NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE agg_lc_06_sales_fact_1997;
CREATE TABLE agg_lc_06_sales_fact_1997(
    time_id INTEGER NOT NULL,
    city VARCHAR(30) NOT NULL,
    state_province VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    store_sales DECIMAL(10,4) NOT NULL,
    store_cost DECIMAL(10,4) NOT NULL,
    unit_sales DECIMAL(10,4) NOT NULL,
    fact_count INTEGER NOT NULL);
# DROP TABLE currency;
CREATE TABLE currency(
    currency_id INTEGER NOT NULL,
    date DATE NOT NULL,
    currency VARCHAR(30) NOT NULL,
    conversion_ratio DECIMAL(10,4) NOT NULL);
# DROP TABLE account;
CREATE TABLE account(
    account_id INTEGER NOT NULL,
    account_parent INTEGER,
    account_description VARCHAR(30),
    account_type VARCHAR(30) NOT NULL,
    account_rollup VARCHAR(30) NOT NULL,
    Custom_Members VARCHAR(255));
# DROP TABLE category;
CREATE TABLE category(
    category_id VARCHAR(30) NOT NULL,
    category_parent VARCHAR(30),
    category_description VARCHAR(30) NOT NULL,
    category_rollup VARCHAR(30));
# DROP TABLE customer;
CREATE TABLE customer(
    customer_id INTEGER NOT NULL,
    account_num BIGINT NOT NULL,
    lname VARCHAR(30) NOT NULL,
    fname VARCHAR(30) NOT NULL,
    mi VARCHAR(30),
    address1 VARCHAR(30),
    address2 VARCHAR(30),
    address3 VARCHAR(30),
    address4 VARCHAR(30),
    city VARCHAR(30),
    state_province VARCHAR(30),
    postal_code VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    customer_region_id INTEGER NOT NULL,
    phone1 VARCHAR(30) NOT NULL,
    phone2 VARCHAR(30) NOT NULL,
    birthdate DATE NOT NULL,
    marital_status VARCHAR(30) NOT NULL,
    yearly_income VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    total_children SMALLINT NOT NULL,
    num_children_at_home SMALLINT NOT NULL,
    education VARCHAR(30) NOT NULL,
    date_accnt_opened DATE NOT NULL,
    member_card VARCHAR(30),
    occupation VARCHAR(30),
    houseowner VARCHAR(30),
    num_cars_owned INTEGER,
    fullname VARCHAR(60) NOT NULL);
# DROP TABLE days;
CREATE TABLE days(
    day INTEGER NOT NULL,
    week_day VARCHAR(30) NOT NULL);
# DROP TABLE department;
CREATE TABLE department(
    department_id INTEGER NOT NULL,
    department_description VARCHAR(30) NOT NULL);
# DROP TABLE employee;
CREATE TABLE employee(
    employee_id INTEGER NOT NULL,
    full_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    position_id INTEGER,
    position_title VARCHAR(30),
    store_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    birth_date DATE NOT NULL,
    hire_date TIMESTAMP,
    end_date TIMESTAMP,
    salary DECIMAL(10,4) NOT NULL,
    supervisor_id INTEGER,
    education_level VARCHAR(30) NOT NULL,
    marital_status VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    management_role VARCHAR(30));
# DROP TABLE employee_closure;
CREATE TABLE employee_closure(
    supervisor_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    distance INTEGER);
# DROP TABLE expense_fact;
CREATE TABLE expense_fact(
    store_id INTEGER NOT NULL,
    account_id INTEGER NOT NULL,
    exp_date TIMESTAMP NOT NULL,
    time_id INTEGER NOT NULL,
    category_id VARCHAR(30) NOT NULL,
    currency_id INTEGER NOT NULL,
    amount DECIMAL(10,4) NOT NULL);
# DROP TABLE position;
CREATE TABLE `position`(
    position_id INTEGER NOT NULL,
    position_title VARCHAR(30) NOT NULL,
    pay_type VARCHAR(30) NOT NULL,
    min_scale DECIMAL(10,4) NOT NULL,
    max_scale DECIMAL(10,4) NOT NULL,
    management_role VARCHAR(30) NOT NULL);
# DROP TABLE product;
CREATE TABLE product(
    product_class_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    brand_name VARCHAR(60),
    product_name VARCHAR(60) NOT NULL,
    SKU BIGINT NOT NULL,
    SRP DECIMAL(10,4),
    gross_weight REAL,
    net_weight REAL,
    recyclable_package BOOLEAN,
    low_fat BOOLEAN,
    units_per_case SMALLINT,
    cases_per_pallet SMALLINT,
    shelf_width REAL,
    shelf_height REAL,
    shelf_depth REAL);
# DROP TABLE product_class;
CREATE TABLE product_class(
    product_class_id INTEGER NOT NULL,
    product_subcategory VARCHAR(30),
    product_category VARCHAR(30),
    product_department VARCHAR(30),
    product_family VARCHAR(30));
# DROP TABLE promotion;
CREATE TABLE promotion(
    promotion_id INTEGER NOT NULL,
    promotion_district_id INTEGER,
    promotion_name VARCHAR(30),
    media_type VARCHAR(30),
    cost DECIMAL(10,4),
    start_date TIMESTAMP,
    end_date TIMESTAMP);
# DROP TABLE region;
CREATE TABLE region(
    region_id INTEGER NOT NULL,
    sales_city VARCHAR(30),
    sales_state_province VARCHAR(30),
    sales_district VARCHAR(30),
    sales_region VARCHAR(30),
    sales_country VARCHAR(30),
    sales_district_id INTEGER);
# DROP TABLE reserve_employee;
CREATE TABLE reserve_employee(
    employee_id INTEGER NOT NULL,
    full_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    position_id INTEGER,
    position_title VARCHAR(30),
    store_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    birth_date TIMESTAMP NOT NULL,
    hire_date TIMESTAMP,
    end_date TIMESTAMP,
    salary DECIMAL(10,4) NOT NULL,
    supervisor_id INTEGER,
    education_level VARCHAR(30) NOT NULL,
    marital_status VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL);
# DROP TABLE salary;
CREATE TABLE salary(
    pay_date TIMESTAMP NOT NULL,
    employee_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    currency_id INTEGER NOT NULL,
    salary_paid DECIMAL(10,4) NOT NULL,
    overtime_paid DECIMAL(10,4) NOT NULL,
    vacation_accrued REAL NOT NULL,
    vacation_used REAL NOT NULL);
# DROP TABLE store;
CREATE TABLE store(
    store_id INTEGER NOT NULL,
    store_type VARCHAR(30),
    region_id INTEGER,
    store_name VARCHAR(30),
    store_number INTEGER,
    store_street_address VARCHAR(30),
    store_city VARCHAR(30),
    store_state VARCHAR(30),
    store_postal_code VARCHAR(30),
    store_country VARCHAR(30),
    store_manager VARCHAR(30),
    store_phone VARCHAR(30),
    store_fax VARCHAR(30),
    first_opened_date TIMESTAMP,
    last_remodel_date TIMESTAMP,
    store_sqft INTEGER,
    grocery_sqft INTEGER,
    frozen_sqft INTEGER,
    meat_sqft INTEGER,
    coffee_bar BOOLEAN,
    video_store BOOLEAN,
    salad_bar BOOLEAN,
    prepared_food BOOLEAN,
    florist BOOLEAN);
# DROP TABLE store_ragged;
CREATE TABLE store_ragged(
    store_id INTEGER NOT NULL,
    store_type VARCHAR(30),
    region_id INTEGER,
    store_name VARCHAR(30),
    store_number INTEGER,
    store_street_address VARCHAR(30),
    store_city VARCHAR(30),
    store_state VARCHAR(30),
    store_postal_code VARCHAR(30),
    store_country VARCHAR(30),
    store_manager VARCHAR(30),
    store_phone VARCHAR(30),
    store_fax VARCHAR(30),
    first_opened_date TIMESTAMP,
    last_remodel_date TIMESTAMP,
    store_sqft INTEGER,
    grocery_sqft INTEGER,
    frozen_sqft INTEGER,
    meat_sqft INTEGER,
    coffee_bar BOOLEAN,
    video_store BOOLEAN,
    salad_bar BOOLEAN,
    prepared_food BOOLEAN,
    florist BOOLEAN);
# DROP TABLE time_by_day;
CREATE TABLE time_by_day(
    time_id INTEGER NOT NULL,
    the_date TIMESTAMP,
    the_day VARCHAR(30),
    the_month VARCHAR(30),
    the_year SMALLINT,
    day_of_month SMALLINT,
    week_of_year INTEGER,
    month_of_year SMALLINT,
    quarter VARCHAR(30),
    fiscal_period VARCHAR(30));
# DROP TABLE warehouse;
CREATE TABLE warehouse(
    warehouse_id INTEGER NOT NULL,
    warehouse_class_id INTEGER,
    stores_id INTEGER,
    warehouse_name VARCHAR(60),
    wa_address1 VARCHAR(30),
    wa_address2 VARCHAR(30),
    wa_address3 VARCHAR(30),
    wa_address4 VARCHAR(30),
    warehouse_city VARCHAR(30),
    warehouse_state_province VARCHAR(30),
    warehouse_postal_code VARCHAR(30),
    warehouse_country VARCHAR(30),
    warehouse_owner_name VARCHAR(30),
    warehouse_phone VARCHAR(30),
    warehouse_fax VARCHAR(30));
# DROP TABLE warehouse_class;
CREATE TABLE warehouse_class(
    warehouse_class_id INTEGER NOT NULL,
    description VARCHAR(30));

CREATE UNIQUE INDEX i_account_id ON account (account_id);
CREATE INDEX i_account_parent ON account (account_parent);
CREATE UNIQUE INDEX i_category_id ON category (category_id);
CREATE INDEX i_category_parent ON category (category_parent);
CREATE UNIQUE INDEX i_currency ON currency (currency_id, date);
CREATE INDEX i_cust_acct_num ON customer (account_num);
CREATE INDEX i_customer_fname ON customer (fname);
CREATE INDEX i_customer_lname ON customer (lname);
CREATE INDEX i_cust_child_home ON customer (num_children_at_home);
CREATE UNIQUE INDEX i_customer_id ON customer (customer_id);
CREATE INDEX i_cust_postal_code ON customer (postal_code);
CREATE INDEX i_cust_region_id ON customer (customer_region_id);
CREATE UNIQUE INDEX i_department_id ON department (department_id);
CREATE UNIQUE INDEX i_employee_id ON employee (employee_id);
CREATE INDEX i_empl_dept_id ON employee (department_id);
CREATE INDEX i_empl_store_id ON employee (store_id);
CREATE INDEX i_empl_super_id ON employee (supervisor_id);
CREATE UNIQUE INDEX i_empl_closure ON employee_closure (supervisor_id, employee_id);
CREATE INDEX i_empl_closure_emp ON employee_closure (employee_id);
CREATE INDEX i_expense_store_id ON expense_fact (store_id);
CREATE INDEX i_expense_acct_id ON expense_fact (account_id);
CREATE INDEX i_expense_time_id ON expense_fact (time_id);
CREATE INDEX i_inv_97_prod_id ON inventory_fact_1997 (product_id);
CREATE INDEX i_inv_97_store_id ON inventory_fact_1997 (store_id);
CREATE INDEX i_inv_97_time_id ON inventory_fact_1997 (time_id);
CREATE INDEX i_inv_97_wrhse_id ON inventory_fact_1997 (warehouse_id);
CREATE INDEX i_inv_98_prod_id ON inventory_fact_1998 (product_id);
CREATE INDEX i_inv_98_store_id ON inventory_fact_1998 (store_id);
CREATE INDEX i_inv_98_time_id ON inventory_fact_1998 (time_id);
CREATE INDEX i_inv_98_wrhse_id ON inventory_fact_1998 (warehouse_id);
CREATE UNIQUE INDEX i_position_id ON position (position_id);
CREATE INDEX i_prod_brand_name ON product (brand_name);
CREATE UNIQUE INDEX i_product_id ON product (product_id);
CREATE INDEX i_prod_class_id ON product (product_class_id);
CREATE INDEX i_product_name ON product (product_name);
CREATE INDEX i_product_SKU ON product (SKU);
CREATE UNIQUE INDEX i_prod_class_pk ON product_class (product_class_id);
CREATE UNIQUE INDEX i_promotion_id ON promotion (promotion_id);
CREATE INDEX i_promo_dist_id ON promotion (promotion_district_id);
CREATE UNIQUE INDEX i_rsrv_empl_id ON reserve_employee (employee_id);
CREATE INDEX i_rsrv_empl_dept ON reserve_employee (department_id);
CREATE INDEX i_rsrv_empl_store ON reserve_employee (store_id);
CREATE INDEX i_rsrv_empl_sup ON reserve_employee (supervisor_id);
CREATE INDEX i_salary_pay_date ON salary (pay_date);
CREATE INDEX i_salary_employee ON salary (employee_id);
CREATE INDEX i_sls_97_cust_id ON sales_fact_1997 (customer_id);
CREATE INDEX i_sls_97_prod_id ON sales_fact_1997 (product_id);
CREATE INDEX i_sls_97_promo_id ON sales_fact_1997 (promotion_id);
CREATE INDEX i_sls_97_store_id ON sales_fact_1997 (store_id);
CREATE INDEX i_sls_97_time_id ON sales_fact_1997 (time_id);
CREATE INDEX i_sls_dec98_cust ON sales_fact_dec_1998 (customer_id);
CREATE INDEX i_sls_dec98_prod ON sales_fact_dec_1998 (product_id);
CREATE INDEX i_sls_dec98_promo ON sales_fact_dec_1998 (promotion_id);
CREATE INDEX i_sls_dec98_store ON sales_fact_dec_1998 (store_id);
CREATE INDEX i_sls_dec98_time ON sales_fact_dec_1998 (time_id);
CREATE INDEX i_sls_98_cust_id ON sales_fact_1998 (customer_id);
CREATE INDEX i_sls_1998_prod_id ON sales_fact_1998 (product_id);
CREATE INDEX i_sls_1998_promo ON sales_fact_1998 (promotion_id);
CREATE INDEX i_sls_1998_store ON sales_fact_1998 (store_id);
CREATE INDEX i_sls_1998_time_id ON sales_fact_1998 (time_id);
CREATE UNIQUE INDEX i_store_id ON store (store_id);
CREATE INDEX i_store_region_id ON store (region_id);
CREATE UNIQUE INDEX i_store_raggd_id ON store_ragged (store_id);
CREATE INDEX i_store_rggd_reg ON store_ragged (region_id);
CREATE UNIQUE INDEX i_time_id ON time_by_day (time_id);
CREATE UNIQUE INDEX i_time_day ON time_by_day (the_date);
CREATE INDEX i_time_year ON time_by_day (the_year);
CREATE INDEX i_time_quarter ON time_by_day (quarter);
CREATE INDEX i_time_month ON time_by_day (month_of_year);
CREATE INDEX i_sls97pl01cust ON agg_pl_01_sales_fact_1997 (customer_id);
CREATE INDEX i_sls97pl01prod ON agg_pl_01_sales_fact_1997 (product_id);
CREATE INDEX i_sls97pl01time ON agg_pl_01_sales_fact_1997 (time_id);
CREATE INDEX i_sls97ll01cust ON agg_ll_01_sales_fact_1997 (customer_id);
CREATE INDEX i_sls97ll01prod ON agg_ll_01_sales_fact_1997 (product_id);
CREATE INDEX i_sls97ll01time ON agg_ll_01_sales_fact_1997 (time_id);
CREATE INDEX i_sls97l05cust ON agg_l_05_sales_fact_1997 (customer_id);
CREATE INDEX i_sls97l05prod ON agg_l_05_sales_fact_1997 (product_id);
CREATE INDEX i_sls97l05promo ON agg_l_05_sales_fact_1997 (promotion_id);
CREATE INDEX i_sls97l05store ON agg_l_05_sales_fact_1997 (store_id);
CREATE INDEX i_sls97c14cust ON agg_c_14_sales_fact_1997 (customer_id);
CREATE INDEX i_sls97c14prod ON agg_c_14_sales_fact_1997 (product_id);
CREATE INDEX i_sls97c14promo ON agg_c_14_sales_fact_1997 (promotion_id);
CREATE INDEX i_sls97c14store ON agg_c_14_sales_fact_1997 (store_id);
CREATE INDEX i_sls97lc100cust ON agg_lc_100_sales_fact_1997 (customer_id);
CREATE INDEX i_sls97lc100prod ON agg_lc_100_sales_fact_1997 (product_id);
CREATE INDEX i_sls97speccust ON agg_c_special_sales_fact_1997 (customer_id);
CREATE INDEX i_sls97specprod ON agg_c_special_sales_fact_1997 (product_id);
CREATE INDEX i_sls97specpromo ON agg_c_special_sales_fact_1997 (promotion_id);
CREATE INDEX i_sls97specstore ON agg_c_special_sales_fact_1997 (store_id);
CREATE INDEX i_sls97gmp_gender ON agg_g_ms_pcat_sales_fact_1997 (gender);
CREATE INDEX i_sls97gmp_ms ON agg_g_ms_pcat_sales_fact_1997 (marital_status);
CREATE INDEX i_sls97gmp_pfam ON agg_g_ms_pcat_sales_fact_1997 (product_family);
CREATE INDEX i_sls97gmp_pdept ON agg_g_ms_pcat_sales_fact_1997 (product_department);
CREATE INDEX i_sls97gmp_pcat ON agg_g_ms_pcat_sales_fact_1997 (product_category);
CREATE INDEX i_sls97gmp_tmonth ON agg_g_ms_pcat_sales_fact_1997 (month_of_year);
CREATE INDEX i_sls97gmp_tquarter ON agg_g_ms_pcat_sales_fact_1997 (quarter);
CREATE INDEX i_sls97gmp_tyear ON agg_g_ms_pcat_sales_fact_1997 (the_year);
CREATE UNIQUE INDEX i_region_pk ON region (region_id);
CREATE UNIQUE INDEX i_warehouse_pk ON warehouse (warehouse_id);
CREATE UNIQUE INDEX i_warehouse_class_pk ON warehouse_class (warehouse_class_id);
SOURCE /scripts/data.sql;
 INSERT INTO agg_pl_01_sales_fact_1997 ( product_id, time_id, customer_id, store_sales_sum, store_cost_sum, unit_sales_sum, fact_count ) SELECT product_id AS product_id, time_id AS time_id, customer_id AS customer_id, SUM(store_sales) AS store_sales, SUM(store_cost) AS store_cost, SUM(unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 GROUP BY product_id, time_id, customer_id;
 INSERT INTO agg_ll_01_sales_fact_1997 ( product_id, time_id, customer_id, store_sales, store_cost, unit_sales, fact_count ) SELECT product_id AS product_id, time_id AS time_id, customer_id AS customer_id, SUM(store_sales) AS store_sales, SUM(store_cost) AS store_cost, SUM(unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 GROUP BY product_id, time_id, customer_id;
 INSERT INTO agg_l_03_sales_fact_1997 ( customer_id, time_id, store_sales, store_cost, unit_sales, fact_count ) SELECT customer_id, time_id, SUM(store_sales) AS store_sales, SUM(store_cost) AS store_cost, SUM(unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 GROUP BY customer_id, time_id;
 INSERT INTO agg_lc_06_sales_fact_1997 ( time_id, city, state_province, country, store_sales, store_cost, unit_sales, fact_count ) SELECT B.time_id, D.city, D.state_province, D.country, SUM(B.store_sales) AS store_sales, SUM(B.store_cost) AS store_cost, SUM(B.unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 B, customer D WHERE B.customer_id = D.customer_id GROUP BY B.time_id, D.city, D.state_province, D.country;
 INSERT INTO agg_l_04_sales_fact_1997 ( time_id, store_sales, store_cost, unit_sales, customer_count, fact_count ) SELECT time_id, SUM(store_sales) AS store_sales, SUM(store_cost) AS store_cost, SUM(unit_sales) AS unit_sales, COUNT(DISTINCT customer_id) AS customer_count, COUNT(*) AS fact_count FROM sales_fact_1997 GROUP BY time_id;
 INSERT INTO agg_c_10_sales_fact_1997 ( month_of_year, quarter, the_year, store_sales, store_cost, unit_sales, customer_count, fact_count ) SELECT D.month_of_year, D.quarter, D.the_year, SUM(B.store_sales) AS store_sales, SUM(B.store_cost) AS store_cost, SUM(B.unit_sales) AS unit_sales, COUNT(DISTINCT customer_id) AS customer_count, COUNT(*) AS fact_count FROM sales_fact_1997 B, time_by_day D WHERE B.time_id = D.time_id GROUP BY D.month_of_year, D.quarter, D.the_year;
 INSERT INTO agg_l_05_sales_fact_1997 ( product_id, customer_id, promotion_id, store_id, store_sales, store_cost, unit_sales, fact_count ) SELECT product_id, customer_id, promotion_id, store_id, SUM(store_sales) AS store_sales, SUM(store_cost) AS store_cost, SUM(unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 GROUP BY product_id, customer_id, promotion_id, store_id;
 INSERT INTO agg_c_14_sales_fact_1997 ( product_id, customer_id, promotion_id, store_id, month_of_year, quarter, the_year, store_sales, store_cost, unit_sales, fact_count ) SELECT B.product_id, B.customer_id, B.promotion_id, B.store_id, D.month_of_year, D.quarter, D.the_year, SUM(B.store_sales) AS store_sales, SUM(B.store_cost) AS store_cost, SUM(B.unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 B, time_by_day D WHERE B.time_id = D.time_id GROUP BY B.product_id, B.customer_id, B.promotion_id, B.store_id, D.month_of_year, D.quarter, D.the_year;
 INSERT INTO agg_lc_100_sales_fact_1997 ( product_id, customer_id, quarter, the_year, store_sales, store_cost, unit_sales, fact_count ) SELECT B.product_id, B.customer_id, D.quarter, D.the_year, SUM(B.store_sales) AS store_sales, SUM(B.store_cost) AS store_cost, SUM(B.unit_sales) AS unit_sales, COUNT(*) AS fact_count FROM sales_fact_1997 B, time_by_day D WHERE B.time_id = D.time_id GROUP BY B.product_id, B.customer_id, D.quarter, D.the_year;
 INSERT INTO agg_c_special_sales_fact_1997 ( product_id, customer_id, promotion_id, store_id, time_month, time_quarter, time_year, store_sales_sum, store_cost_sum, unit_sales_sum, fact_count ) SELECT B.product_id, B.customer_id, B.promotion_id, B.store_id, D.month_of_year, D.quarter, D.the_year, SUM(B.store_sales) AS store_sales_sum, SUM(B.store_cost) AS store_cost_sum, SUM(B.unit_sales) AS unit_sales_sum, COUNT(*) AS fact_count FROM sales_fact_1997 B, time_by_day D WHERE B.time_id = D.time_id GROUP BY B.product_id, B.customer_id, B.promotion_id, B.store_id, D.month_of_year, D.quarter, D.the_year;
 INSERT INTO agg_g_ms_pcat_sales_fact_1997 ( gender, marital_status, product_family, product_department, product_category, month_of_year, quarter, the_year, store_sales, store_cost, unit_sales, customer_count, fact_count ) SELECT C.gender, C.marital_status, PC.product_family, PC.product_department, PC.product_category, T.month_of_year, T.quarter, T.the_year, SUM(B.store_sales) AS store_sales, SUM(B.store_cost) AS store_cost, SUM(B.unit_sales) AS unit_sales, COUNT(DISTINCT C.customer_id) AS customer_count, COUNT(*) AS fact_count FROM sales_fact_1997 B, time_by_day T, product P, product_class PC, customer C WHERE B.time_id = T.time_id AND B.customer_id = C.customer_id AND B.product_id = P.product_id AND P.product_class_id = PC.product_class_id GROUP BY C.gender, C.marital_status, PC.product_family, PC.product_department, PC.product_category, T.month_of_year, T.quarter, T.the_year;
