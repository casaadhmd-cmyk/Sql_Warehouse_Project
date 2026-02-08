---1.To Get the Bronze Table Creation script

SELECT name, sql
FROM sqlite_master
WHERE type = 'table'
AND name LIKE 'bronze_%';

--2. Rename the "bronze To silver"


  --3. Run the Script below which is for Silver which is exactly same as bronze BUT WE WILL MODIFY AND CLEAN THE DATA BEFORE TRANSAFERRING TO GOLD



CREATE TABLE silver_crm_customer_info (
cst_id INTEGER,
cst_key TEXT,
cst_firstname TEXT,
cst_lastname TEXT,
cst_marital_status TEXT,
cst_gndr TEXT,
cst_create_date NUMERIC
);

CREATE TABLE silver_crm_prd_info (

prd_id INTEGER,

prd_key TEXT,

prd_nm TEXT,

prd_cost INTEGER,

prd_line TEXT,

prd_start_dt NUMERIC,

prd_end_dt NUMERIC

);


CREATE TABLE silver_erp_CUST_AZ12
(

CID TEXT,
BDATE NUMERIC,
GEN TEXT
);

CREATE TABLE silver_erp_PX_CAT_G1V2

(
ID TEXT,
CAT TEXT,
SUBCAT TEXT,
MAINTENANCE TEXT
);

CREATE TABLE silver_erp_LOC_A101

(

CID	TEXT,
CNTRY TEXT
);


CREATE TABLE silver_crm_sales_details (

sls_ord_num TEXT,
sls_prd_key TEXT,
sls_cust_id INTEGER,
sls_order_dt NUMERIC,
sls_ship_dt NUMERIC,
sls_due_dt NUMERIC,
sls_sales Numeric,
sls_quantity Integer,
sls_price Numeric
);
