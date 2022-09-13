insert into default.lineitem_summ
select l_orderkey, sum(L_QUANTITY) total_quantity,sum(L_EXTENDEDPRICE) total_price
from henkan_demo.lineitem
group by l_orderkey