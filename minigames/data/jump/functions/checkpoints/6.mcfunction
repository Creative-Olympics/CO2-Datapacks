
execute as @a[scores={jump.time_left=1..,jump.step=5,pos.y=..100000}] at @s positioned as @e[tag=jump.checkpoint.5,limit=1] run tp @s ~ ~ ~
execute as @a[scores={jump.time_left=1..,jump.step=5,pos.y=..100000}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0

execute unless entity @e[tag=jump.checkpoint.6] run summon marker -283.5 102.5 -0.5 {Tags:["jump.checkpoint","jump.checkpoint.6"]}
execute as @a[team=jump,scores={jump.step=5}] unless data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 with compass{display:{Name:'{"text":"Next checkpoint","color":"dark_purple","bold":true,"italic":true}'},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:-283,Y:102,Z:0}} 1
execute as @e[tag=jump.checkpoint.6] at @s run particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=5}]
execute as @e[tag=jump.checkpoint.6] at @s run particle minecraft:totem_of_undying ^ ^ ^2 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=5}]
execute as @e[tag=jump.checkpoint.6] at @s run particle minecraft:totem_of_undying ^ ^ ^-2 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=5}]

execute at @e[tag=jump.checkpoint.6] as @a[distance=..2,scores={jump.step=5}] at @s run clear @s
execute at @e[tag=jump.checkpoint.6] as @a[distance=..2,scores={jump.step=5}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute at @e[tag=jump.checkpoint.6] as @a[distance=..2,scores={jump.step=5}] at @s run scoreboard players add @s jump.time_left 60
execute at @e[tag=jump.checkpoint.6] as @a[distance=..2,scores={jump.step=5}] at @s run title @s title {"text": " "}
execute at @e[tag=jump.checkpoint.6] as @a[distance=..2,scores={jump.step=5}] at @s run title @s subtitle {"text": "+3 seconds","color":"gray","bold":true,"italic":true}
execute at @e[tag=jump.checkpoint.6] as @a[distance=..2,scores={jump.step=5}] at @s run scoreboard players add @s jump.step 1