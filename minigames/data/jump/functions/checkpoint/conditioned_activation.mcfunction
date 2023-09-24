
scoreboard players operation @a[team=jump] jump.step -= @s jump.step
execute if entity @a[team=jump,scores={jump.step=0}] run function jump:checkpoint/active with entity @s data.jump.checkpoint_properties
scoreboard players operation @a[team=jump] jump.step += @s jump.step