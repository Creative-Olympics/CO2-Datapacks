
particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=0}]
$particle minecraft:totem_of_undying ^ ^ ^$(size) 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=0}]
$particle minecraft:totem_of_undying ^ ^ ^-$(size) 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=0}]

$execute as @a[team=jump,scores={jump.step=0}] unless data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 with compass{display:{Name:'{"text":"Next checkpoint","color":"dark_purple","bold":true,"italic":true}'},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:$(x_int),Y:$(y_int),Z:$(z_int)}} 1

$tag @a[team=jump,scores={jump.step=0},distance=..$(size)] add jump.passed_checkpoint

scoreboard players operation @a[tag=jump.passed_checkpoint] jump.time_left += @s jump.time_left
execute store result score #jump.time_left.seconds data store result score #jump.time_left.first_decimal data run scoreboard players get @s jump.time_left
scoreboard players operation #jump.time_left.seconds data /= 20 const
scoreboard players operation #jump.time_left.first_decimal data %= 20 const
scoreboard players operation #jump.time_left.first_decimal data /= 2 const

clear @a[tag=jump.passed_checkpoint]
playsound minecraft:entity.experience_orb.pickup master @a[tag=jump.passed_checkpoint] ~ ~ ~ 1 1 0
execute unless score @s jump.time_left matches 0 run title @a[tag=jump.passed_checkpoint] title {"text": " "}
execute unless score @s jump.time_left matches 0 run title @a[tag=jump.passed_checkpoint] subtitle [{"text": "+","color":"gray","bold":true,"italic":true},{"score":{"name":"#jump.time_left.seconds","objective":"data"},"color":"gray","bold":true,"italic":true},{"text": ".","color":"gray","bold":true,"italic":true},{"score":{"name":"#jump.time_left.first_decimal","objective":"data"},"color":"gray","bold":true,"italic":true},{"text":" seconds","color":"gray","bold":true,"italic":true}]
scoreboard players add @a[tag=jump.passed_checkpoint] jump.step 1

tag @a[tag=jump.passed_checkpoint] remove jump.passed_checkpoint