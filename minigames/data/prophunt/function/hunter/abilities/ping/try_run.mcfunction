scoreboard players reset @s prophunt.use_coas

execute if score @s prophunt.hunter_ping_stack matches ..0 run return run function prophunt:hunter/abilities/ping/too_many_pings
function #bs.view:at_aimed_point { \
  run:"function prophunt:hunter/abilities/ping/on_hit", \
  with:{entities:"prophunt.entity",max_distance:32,ignored_blocks:"#prophunt:can_walk_through"}, \
}
