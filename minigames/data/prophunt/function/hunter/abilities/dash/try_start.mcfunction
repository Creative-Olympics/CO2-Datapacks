scoreboard players reset @s prophunt.drop

execute unless score @s prophunt.hunter_dash_cooldown matches 1.. unless score @s prophunt.hunter_stunned matches 1.. run return run function prophunt:hunter/abilities/dash/start
playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
