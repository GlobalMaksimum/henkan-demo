#set($foo = [10, 20, 30])
#{foreach}($i in $foo)
insert into henkan_demo.velocity_array (name,id) values (foreach.index::varchar,$i);
commit;
#{end}