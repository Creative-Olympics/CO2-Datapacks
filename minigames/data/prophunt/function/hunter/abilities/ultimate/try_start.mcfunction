# Can't use it
execute if score @s prophunt.hunter_ultimate_timer matches 1.. run return run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
execute if score @s prophunt.hunter_ultimate_points < $prophunt.hunter_ultimate_cost data run return run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0

function prophunt:hunter/abilities/ultimate/start
