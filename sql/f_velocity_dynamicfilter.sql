select replace('"'||listagg(distinct name)||'"',',','", "') from henkan_demo.filter_list