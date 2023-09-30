
summon marker 119 80 -9 {Tags:["dropper.zone.refill"]}

# Random X pos
execute as @e[tag=dropper.zone.refill] store result score @s data run data get entity @s Pos[0] 1
execute as @e[tag=dropper.zone.refill] store result score @s tmp run random value 0..8
execute as @e[tag=dropper.zone.refill] store result entity @s Pos[0] double 1 run scoreboard players operation @s data += @s tmp

# Random Z pos
execute as @e[tag=dropper.zone.refill] store result score @s data run data get entity @s Pos[2] 1
execute as @e[tag=dropper.zone.refill] store result score @s tmp run random value 0..8
execute as @e[tag=dropper.zone.refill] store result entity @s Pos[2] double 1 run scoreboard players operation @s data += @s tmp

execute at @e[tag=dropper.zone.refill] run setblock ~ ~ ~ water destroy

execute at @e[tag=dropper.zone.refill] align xyz positioned ~0.5 ~1 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.2 0 0.2 0 5 normal

kill @e[tag=dropper.zone.refill]

scoreboard players remove #dropper.zone.refill data 1

execute if score #dropper.zone.refill data matches 1.. run function dropper:zone/refill-loop