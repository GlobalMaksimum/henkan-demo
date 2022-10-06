copy kktcell.cdr with source jdbcsource() parser jdbcloader( connect='oraclelab', 
query='select * from kktcell.cdr where insert_date_ts>cast(''${max_cdr_ts}'' as timestamp)'
);