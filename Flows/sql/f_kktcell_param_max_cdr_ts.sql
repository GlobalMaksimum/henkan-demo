SELECT ''''||TO_CHAR(nvl(max(insert_date_ts),'1970-01-01 00:00:00'),'yyyy-mm-dd hh24:mi:ss.ff')||''''
 from kktcell.cdr