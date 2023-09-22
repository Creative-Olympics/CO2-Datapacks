
execute as @a[scores={jump.time_left=1..,jump.step=18,pos.y=..100000}] at @s positioned as @e[tag=jump.checkpoint.18,limit=1] run tp @s ~ ~ ~
execute as @a[scores={jump.time_left=1..,jump.step=18,pos.y=..100000}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0

execute unless entity @e[tag=jump.checkpoint.19] run summon marker -336.5 111.5 1.5 {Tags:["jump.checkpoint","jump.checkpoint.19"]}
execute as @e[tag=jump.checkpoint.19] at @s run particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=18}]
execute as @e[tag=jump.checkpoint.19] at @s run particle minecraft:totem_of_undying ^ ^ ^2 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=18}]
execute as @e[tag=jump.checkpoint.19] at @s run particle minecraft:totem_of_undying ^ ^ ^-2 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=18}]

execute at @e[tag=jump.checkpoint.19] as @a[distance=..2,scores={jump.step=18}] at @s run function #global:endgame_title {type:"finish"}
execute at @e[tag=jump.checkpoint.19] as @a[distance=..2,scores={jump.step=18}] at @s run function jump:finish/print_time
execute at @e[tag=jump.checkpoint.19] as @a[distance=..2,scores={jump.step=18}] at @s run scoreboard players set @s jump.time_left 0
execute at @e[tag=jump.checkpoint.19] as @a[distance=..2,scores={jump.step=18}] at @s run title @s actionbar {"text":" "}