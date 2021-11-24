#set($foo = ["a", "b", "c"])
#{foreach}($i in [0.. 2])
insert into henkan_demo.velocity_array (name,id) values (foo.get($i),$i);
commit;
#{end}