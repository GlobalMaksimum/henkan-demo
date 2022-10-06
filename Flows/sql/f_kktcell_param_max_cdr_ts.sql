SELECT 'TO_DATE('''||TO_CHAR(nvl(max(sysdate),'1970-01-01 00:00:00'),'YYYYMMDDHH24MISS')||''',''YYYYMMDDHH24MISS'')' 
 from kktcell.cdr