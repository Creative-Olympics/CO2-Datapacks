# Random pos
execute store result entity @s Pos[0] double 1 run random value 119..127
execute store result entity @s Pos[2] double 1 run random value -9..-1

execute at @s run setblock ~ ~ ~ water destroy

scoreboard players remove #dropper.zone.refill data 1

execute if score #dropper.zone.refill data matches 0 run kill @s
execute if score #dropper.zone.refill data matches 1.. run function dropper:map/dropzone/refill_loop
