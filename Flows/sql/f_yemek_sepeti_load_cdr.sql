copy kktcell.cdr_day1 with source jdbcsource() parser jdbcloader( connect='oraclelab', 
query='select /*+parallel(16)*/ * from kktcell.cdr_day1 where rownum<10000'
);