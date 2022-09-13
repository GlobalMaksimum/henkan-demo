drop table if exists henkan_demo.lineitem;

CREATE TABLE henkan_demo.lineitem
(
    l_orderkey int,
    l_partkey int,
    l_suppkey int,
    l_linenumber int,
    l_quantity numeric(15,2),
    l_extendedprice numeric(15,2),
    l_discount numeric(15,2),
    l_tax numeric(15,2),
    l_returnflag char(1),
    l_linestatus char(1),
    l_shipdate date,
    l_commitdate date,
    l_receiptdate date,
    l_shipinstruct char(25),
    l_shipmode char(10),
    l_comment varchar(44)
) order by l_orderkey
segmented by hash(l_orderkey) all nodes;

drop table if exists henkan_demo.customer;
CREATE TABLE henkan_demo.customer
(
    c_custkey int NOT NULL,
    c_name varchar(25) NOT NULL,
    c_address varchar(40) NOT NULL,
    c_nationkey int NOT NULL,
    c_phone char(15) NOT NULL,
    c_acctbal numeric(15,2) NOT NULL,
    c_mktsegment char(10) NOT NULL,
    c_comment varchar(117) NOT NULL
) order by c_custkey
unsegmented all nodes;

drop table if exists henkan_demo.dim_customer;
CREATE TABLE henkan_demo.dim_customer
(
    customer_sk int,
    c_custkey int NOT NULL,
    c_name varchar(25) NOT NULL,
    c_address varchar(40) NOT NULL,
    c_nationkey int NOT NULL,
    c_phone char(15) NOT NULL,
    c_acctbal numeric(15,2) NOT NULL,
    c_mktsegment char(10) NOT NULL,
    c_comment varchar(117) NOT NULL,
    effective_date timestamp,
    expiry_date timestamp,
    etl_date_create timestamp,
    etl_date_update timestamp,
    etl_id_create int,
    etl_id_update int,
    is_deleted_in_source int,
    is_current int
) order by customer_sk
unsegmented all nodes;