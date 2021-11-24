$sun.setPlanets('Earth', 'Mars', 'Neptune')
#{foreach}($i in [0.. 2])
insert into henkan_demo.velocity_array (name,id) values (sun.getPlanets($i)),$i);
commit;
#{end}