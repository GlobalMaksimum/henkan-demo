(select * from public.orders
where o_orderkey>${p_max_orderkey}) tbl