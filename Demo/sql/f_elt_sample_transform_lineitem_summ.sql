truncate table henkan_demo.lineitem_summ;

insert into henkan_demo.lineitem_summ
select l_orderkey, sum(L_QUANTITY) total_quantity,sum(L_EXTENDEDPRICE) total_price
from henkan_demo.lineitem
group by l_orderkey;