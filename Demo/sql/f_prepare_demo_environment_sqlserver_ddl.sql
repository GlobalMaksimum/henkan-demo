drop table if exists TESTDB.dbo.customer;
CREATE TABLE TESTDB.dbo.customer(
	[c_custkey] [int] NULL,
	[c_name] [varchar](25) NULL,
	[c_address] [varchar](40) NULL,
	[c_nationkey] [bigint] NULL,
	[c_phone] [varchar](15) NULL,
	[c_acctbal] [numeric](15, 2) NULL,
	[c_mktsegment] [varchar](10) NULL,
	[c_comment] [varchar](117) NULL
);

drop table if exists TESTDB.dbo.lineitem;
CREATE TABLE TESTDB.dbo.lineitem(
	[l_orderkey] [int] NOT NULL,
	[l_partkey] [int] NOT NULL,
	[l_suppkey] [int] NOT NULL,
	[l_linenumber] [int] NOT NULL,
	[l_quantity] [numeric](15, 2) NOT NULL,
	[l_extendedprice] [numeric](15, 2) NOT NULL,
	[l_discount] [numeric](15, 2) NOT NULL,
	[l_tax] [numeric](15, 2) NOT NULL,
	[l_returnflag] [char](1) NOT NULL,
	[l_linestatus] [char](1) NOT NULL,
	[l_shipdate] [date] NOT NULL,
	[l_commitdate] [date] NOT NULL,
	[l_receiptdate] [date] NOT NULL,
	[l_shipinstruct] [char](25) NOT NULL,
	[l_shipmode] [char](10) NOT NULL,
	[l_comment] [varchar](44) NOT NULL
);