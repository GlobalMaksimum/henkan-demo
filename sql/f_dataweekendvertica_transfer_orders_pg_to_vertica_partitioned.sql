(
    SELECT 
    o_orderkey, 
    o_custkey, 
    o_orderstatus, 
    o_totalprice, 
    o_orderdate, 
    o_orderpriority, 
    o_clerk, 
    o_shippriority, 
    o_comment,
    mod(o_orderkey,3) as splitter   
FROM 
    public.orders
) tbl