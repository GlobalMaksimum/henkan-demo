copy kktcell.cdr with source jdbcsource() parser jdbcloader( connect='oraclelab', 
query='select * from kktcell.cdr where insert_date_ts>to_timestamp(''${max_cdr_ts}'',''yyyy-mm-dd hh24:mi:ss.ff6'')'
);