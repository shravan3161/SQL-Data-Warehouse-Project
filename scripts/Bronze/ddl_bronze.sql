/* 
==============================================================================================
DDL Script: Creating Bronze Tables
===============================================================================================
Script Purpose:
This Script creates tables in 'Bronze' schema and dropping existing tables
Run this Script to redefine the structre of this layer 
===============================================================
*/
IF OBJECT_ID('bronze.crm_cust_info', 'U') is not null
    drop TABLE bronze.crm_cust_info;
GO
create table bronze.crm_cust_info(
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_marital_status nvarchar(50),
cst_gndr nvarchar(50),
cst_createdate DATE
);
GO
create table bronze.crm_prd_info(
prd_id int,
prd_key nvarchar(50),
prd_nm nvarchar(50),
prd_cost int,
prd_line nvarchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);
go
create table bronze.crm_sales_details(
sls_ord_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);
go
create table bronze.erp_loc_a101(
cid nvarchar(50),
cntry nvarchar(50)
);
go
create table bronze.erp_cust_az12(
cid nvarchar(50),
bdate date,
gen nvarchar(50)
);
go
create table bronze.erp_px_cat_g1v2(
id nvarchar(50),
cat nvarchar(50),
subcat nvarchar(50),
maintenance nvarchar(50)
);
go
