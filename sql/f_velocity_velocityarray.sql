#set($foo = [1, 2 , 3 ])
#{foreach}($i in $foo)
insert into henkan_demo.velocity_array (name,id) values (foo.get($i)::varchar,$i);
commit;
#if( $foreach.hasNext ),#end
#{end}