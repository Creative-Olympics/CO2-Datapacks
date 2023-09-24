
execute as @a[scores={jump.time_left=1..,jump.step=8,pos.y=..102000}] at @s positioned as @e[tag=jump.checkpoint.8,limit=1] run tp @s ~ ~ ~
execute as @a[scores={jump.time_left=1..,jump.step=8,pos.y=..102000}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 2 0

execute unless entity @e[tag=jump.checkpoint.9] run summon marker -265.5 111.0 20.5 {Tags:["jump.checkpoint","jump.checkpoint.9"]}
execute as @a[team=jump,scores={jump.step=8}] unless data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 with compass{display:{Name:'{"text":"Next checkpoint","color":"dark_purple","bold":true,"italic":true}'},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:-265,Y:111,Z:20}} 1
execute as @e[tag=jump.checkpoint.9] at @s run particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=8}]
execute as @e[tag=jump.checkpoint.9] at @s run particle minecraft:totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=8}]
execute as @e[tag=jump.checkpoint.9] at @s run particle minecraft:totem_of_undying ^ ^ ^-1.5 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=8}]

execute at @e[tag=jump.checkpoint.9] as @a[distance=..2,scores={jump.step=8}] at @s run clear @s
execute at @e[tag=jump.checkpoint.9] as @a[distance=..2,scores={jump.step=8}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute at @e[tag=jump.checkpoint.9] as @a[distance=..2,scores={jump.step=8}] at @s run scoreboard players add @s jump.time_left 140
execute at @e[tag=jump.checkpoint.9] as @a[distance=..2,scores={jump.step=8}] at @s run title @s title {"text": " "}
execute at @e[tag=jump.checkpoint.9] as @a[distance=..2,scores={jump.step=8}] at @s run title @s subtitle {"text": "+7 seconds","color":"gray","bold":true,"italic":true}
execute at @e[tag=jump.checkpoint.9] as @a[distance=..2,scores={jump.step=8}] at @s run scoreboard players add @s jump.step 1