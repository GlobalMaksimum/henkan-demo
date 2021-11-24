#{foreach}($i in [1.. 3)
insert into  henkan_demo.velocity_array (name,id) values (cast($i as varchar),$i);
#{end}--write your sql