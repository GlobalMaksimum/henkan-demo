#set($foo = ${DynamicFilter.split(",")})
#{foreach}($i in $foo)
update henkan_demo.filter_list set update_date=current_timestamp where name='$i.trim()';
commit;
#{end}