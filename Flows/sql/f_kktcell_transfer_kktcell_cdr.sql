(select 
    a.*,
    mod(call_id,6) splitter from kktcell.cdr2 a) TBL