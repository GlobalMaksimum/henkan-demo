insert overwrite table lineitem_summ
select l_orderkey, sum(L_QUANTITY) total_quantity,sum(L_EXTENDEDPRICE) total_price
from lineitem
group by l_orderkey;