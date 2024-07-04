particle cloud ^ ^ ^-3 0.3 0.5 0.3 0.1 1 force
scoreboard players remove #prophunt.hunter_dash.max_depth data 1

execute positioned ~-.75 ~-.75 ~-.75 as @e[type=minecraft:interaction,tag=prophunt.hitbox,dx=.5,dy=.5,dz=.5] run function prophunt:hunter/find_prop/prop_hurt_as_hitbox

execute if score #prophunt.hunter_dash.max_depth data matches 1.. positioned ^ ^ ^.1 rotated ~ 0 if block ^ ^ ^.3 #prophunt:can_walk_through rotated as @s run return run function prophunt:hunter/abilities/dash/process/raycast
execute if score #prophunt.hunter_dash.max_depth data matches 1.. positioned ^ ^ ^.1 rotated ~ 0 if block ^ ^ ^.3 #minecraft:slabs if block ^ ^.5 ^.3 #prophunt:can_walk_through rotated as @s run return run function prophunt:hunter/abilities/dash/process/raycast
tp @s ~ ~ ~
