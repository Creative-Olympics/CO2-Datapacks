tag @s add prophunt.is_attacker
scoreboard players set #prophunt.hunter_dash.max_depth data 15
execute unless score @s prophunt.hunter_stunned matches 1.. on vehicle at @s run function prophunt:hunter/abilities/dash/process/raycast
execute if score #prophunt.hunter_dash.max_depth data matches 5.. run function prophunt:hunter/abilities/dash/stop
tag @s remove prophunt.is_attacker
