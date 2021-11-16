(SELECT 
    p_partkey, 
    p_name, 
    p_mfgr, 
    p_brand, 
    p_type, 
    p_size, 
    p_container, 
    p_retailprice, 
    p_comment 
FROM 
    public.part
where p_partkey>${Max_Partkey} ) tbl