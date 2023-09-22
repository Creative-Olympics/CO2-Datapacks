
execute as @a[scores={jump.time_left=1..,jump.step=7,pos.y=..100000}] at @s positioned as @e[tag=jump.checkpoint.7,limit=1] run tp @s ~ ~ ~
execute as @a[scores={jump.time_left=1..,jump.step=7,pos.y=..100000}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0

execute unless entity @e[tag=jump.checkpoint.8] run summon marker -271.5 110.5 9.5 {Tags:["jump.checkpoint","jump.checkpoint.8"]}
execute as @e[tag=jump.checkpoint.8] at @s run particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=7}]
execute as @e[tag=jump.checkpoint.8] at @s run particle minecraft:totem_of_undying ^ ^ ^2 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=7}]
execute as @e[tag=jump.checkpoint.8] at @s run particle minecraft:totem_of_undying ^ ^ ^-2 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=7}]

execute at @e[tag=jump.checkpoint.8] as @a[distance=..2,scores={jump.step=7}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute at @e[tag=jump.checkpoint.8] as @a[distance=..2,scores={jump.step=7}] at @s run scoreboard players add @s jump.time_left 140
execute at @e[tag=jump.checkpoint.8] as @a[distance=..2,scores={jump.step=7}] at @s run title @s title {"text": " "}
execute at @e[tag=jump.checkpoint.8] as @a[distance=..2,scores={jump.step=7}] at @s run title @s subtitle {"text": "+7 seconds","color":"gray","bold":true,"italic":true}
execute at @e[tag=jump.checkpoint.8] as @a[distance=..2,scores={jump.step=7}] at @s run scoreboard players add @s jump.step 1