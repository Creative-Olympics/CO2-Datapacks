# Executed as & at the chair entity

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s pos.x += @s vel.x
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation @s pos.y += @s vel.y
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s pos.z += @s vel.z

execute at @s facing entity @e[tag=wallstreet.villager,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~