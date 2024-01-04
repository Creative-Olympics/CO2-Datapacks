
# Particle effects
particle dust 0.565 0.000 1.000 1 ~ ~ ~ 0 5 0 0 10 normal @a[scores={jump.step=0}]
$particle minecraft:totem_of_undying ^ ^ ^$(size) 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=0}]
$particle minecraft:totem_of_undying ^ ^ ^-$(size) 0.1 0.1 0.1 0 3 normal @a[scores={jump.step=0}]

# Give compass
$execute as @a[team=jump,scores={jump.step=0}] unless data entity @s Inventory[{Slot:4b}] run item replace entity @s hotbar.4 with compass{display:{Name:'{"text":"Next checkpoint","color":"dark_purple","bold":true,"italic":true}'},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:$(x_int),Y:$(y_int),Z:$(z_int)}} 1

# If th player fall, TP on last checkpoint
execute store result score #jump.y_limit data run data get entity @s data.jump.checkpoint_properties.y_limit 1000
execute as @a[team=jump,scores={jump.step=0}] if score @s pos.y < #jump.y_limit data run tag @s add jump.fall
scoreboard players operation @e[tag=jump.checkpoint,distance=0.1..] jump.step -= @s jump.step
execute as @a[tag=jump.fall] at @s run particle dust 0.565 0.000 1.000 1 ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a

execute as @a[tag=jump.fall] at @s positioned as @e[tag=jump.checkpoint,scores={jump.step=-1}] run tp @s ~ ~1 ~

execute as @a[tag=jump.fall] at @s run particle dust 0.565 0.000 1.000 1 ~ ~1 ~ 0.5 1 0.5 0 100 normal @a
execute as @a[tag=jump.fall] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 2 0
scoreboard players operation @e[tag=jump.checkpoint,distance=0.1..] jump.step += @s jump.step
tag @a[tag=jump.fall] remove jump.fall

# Detect if the player passed the checkpoint
$tag @a[team=jump,scores={jump.step=0},distance=..$(size)] add jump.passed_checkpoint

# Give additionel time (and print it as a subtitle)
scoreboard players operation @a[tag=jump.passed_checkpoint] jump.time_left += @s jump.time_left
execute store result score #jump.time_left.seconds data store result score #jump.time_left.first_decimal data run scoreboard players get @s jump.time_left
scoreboard players operation #jump.time_left.seconds data /= 20 const
scoreboard players operation #jump.time_left.first_decimal data %= 20 const
scoreboard players operation #jump.time_left.first_decimal data /= 2 const
execute unless score @s jump.time_left matches 0 run title @a[tag=jump.passed_checkpoint] title {"text": " "}
execute unless score @s jump.time_left matches 0 run title @a[tag=jump.passed_checkpoint] subtitle [{"text": "+","color":"gray","bold":true,"italic":true},{"score":{"name":"#jump.time_left.seconds","objective":"data"},"color":"gray","bold":true,"italic":true},{"text": ".","color":"gray","bold":true,"italic":true},{"score":{"name":"#jump.time_left.first_decimal","objective":"data"},"color":"gray","bold":true,"italic":true},{"text":" seconds","color":"gray","bold":true,"italic":true}]

# Print in tellraw the time spend to pass the checkpoint
scoreboard players operation #checkpoint jump.step = @s jump.step
execute as @a[tag=jump.passed_checkpoint] run function jump:checkpoint/print_time
scoreboard players set @a[tag=jump.passed_checkpoint] jump.checkpoint_timer 0

# Sound effect
playsound minecraft:entity.experience_orb.pickup master @a[tag=jump.passed_checkpoint] ~ ~ ~ 1 1 0

# Clear to get the next checkpoint compass
clear @a[tag=jump.passed_checkpoint]

scoreboard players add @a[tag=jump.passed_checkpoint] jump.step 1
tag @a[tag=jump.passed_checkpoint] remove jump.passed_checkpoint