create schema if not exists henkan_demo;

DROP TABLE 
    IF EXISTS henkan_demo.lineitem;
CREATE TABLE
    henkan_demo.lineitem
    (
        l_orderkey      BIGINT,
        l_partkey       BIGINT,
        l_suppkey       BIGINT,
        l_linenumber    BIGINT,
        l_quantity      DECIMAL(15,2),
        l_extendedprice DECIMAL(15,2),
        l_discount      DECIMAL(15,2),
        l_tax           DECIMAL(15,2),
        l_returnflag STRING,
        l_linestatus STRING,
        l_shipdate    DATE,
        l_commitdate  DATE,
        l_receiptdate DATE,
        l_shipinstruct STRING,
        l_shipmode STRING,
        l_comment STRING
    );
DROP TABLE 
    IF EXISTS henkan_demo.customer;
CREATE TABLE
    henkan_demo.customer
    (
        c_custkey BIGINT,
        c_name STRING,
        c_address STRING,
        c_nationkey BIGINT,
        c_phone STRING,
        c_acctbal DECIMAL(15,2),
        c_mktsegment STRING,
        c_comment STRING
    );
DROP TABLE 
    IF EXISTS henkan_demo.dim_customer;
CREATE TABLE
    henkan_demo.dim_customer
    (
        customer_sk BIGINT,
        c_custkey   BIGINT,
        c_name STRING,
        c_address STRING,
        c_nationkey BIGINT,
        c_phone STRING,
        c_acctbal DECIMAL(15,2),
        c_mktsegment STRING,
        c_comment STRING,
        effective_date       TIMESTAMP,
        expiry_date          TIMESTAMP,
        etl_date_create      TIMESTAMP,
        etl_date_update      TIMESTAMP,
        etl_id_create        BIGINT,
        etl_id_update        BIGINT,
        is_deleted_in_source BIGINT,
        is_current           BIGINT
    );
DROP TABLE
    IF EXISTS henkan_demo.flip_dim_customer;
CREATE TABLE
    henkan_demo.flip_dim_customer
    (
        customer_sk BIGINT,
        c_custkey   BIGINT,
        c_name STRING,
        c_address STRING,
        c_nationkey BIGINT,
        c_phone STRING,
        c_acctbal DECIMAL(15,2),
        c_mktsegment STRING,
        c_comment STRING,
        effective_date       TIMESTAMP,
        expiry_date          TIMESTAMP,
        etl_date_create      TIMESTAMP,
        etl_date_update      TIMESTAMP,
        etl_id_create        BIGINT,
        etl_id_update        BIGINT,
        is_deleted_in_source BIGINT,
        is_current           BIGINT
    );