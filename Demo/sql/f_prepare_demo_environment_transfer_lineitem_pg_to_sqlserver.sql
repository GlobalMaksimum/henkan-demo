(select a.*,mod(l_orderkey,5) as splitter from public.lineitem a) TBL