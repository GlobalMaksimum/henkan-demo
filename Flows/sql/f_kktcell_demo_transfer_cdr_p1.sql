copy kktcell.cdr (imsi,a) with source jdbcsource() parser jdbcloader( connect='oraclelab', 
query='select imsi,c  from kktcell.cdr where insert_date_ts>to_timestamp(''${max_cdr_ts}'',''yyyy-mm-dd hh24:mi:ss.ff6'') and mod(ora_hash(imsi),4)=0'
);