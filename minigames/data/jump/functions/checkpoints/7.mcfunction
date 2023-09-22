
execute as @a[scores={jump.time_left=1..,jump.step=6,pos.y=..100000}] at @s positioned as @e[tag=jump.checkpoint.6,limit=1] run tp @s ~ ~ ~
execute as @a[scores={jump.time_left=1..,jump.step=6,pos.y=..100000}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0

execute unless entity @e[tag=jump.checkpoint.7] run summon marker -288.5 105.0 8.5 {Tags:["jump.checkpoint","jump.checkpoint.7"]}
execute as @e[tag=jump.checkpoint.7] at @s run particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=6}]
execute as @e[tag=jump.checkpoint.7] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=6}]
execute as @e[tag=jump.checkpoint.7] at @s run particle minecraft:totem_of_undying ^ ^ ^-1.5 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=6}]

execute at @e[tag=jump.checkpoint.7] as @a[distance=..1.5,scores={jump.step=6}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute at @e[tag=jump.checkpoint.7] as @a[distance=..1.5,scores={jump.step=6}] at @s run scoreboard players add @s jump.time_left 100
execute at @e[tag=jump.checkpoint.7] as @a[distance=..1.5,scores={jump.step=6}] at @s run title @s title {"text": " "}
execute at @e[tag=jump.checkpoint.7] as @a[distance=..1.5,scores={jump.step=6}] at @s run title @s subtitle {"text": "+5 seconds","color":"gray","bold":true,"italic":true}
execute at @e[tag=jump.checkpoint.7] as @a[distance=..1.5,scores={jump.step=6}] at @s run scoreboard players add @s jump.step 1