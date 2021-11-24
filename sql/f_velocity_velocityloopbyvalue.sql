#set($foo = [${DynamicFilter}])
#{foreach}($i in $foo)
update henkan_demo.filter_list set update_date=sysdate where name='$i';
commit;
#{end}