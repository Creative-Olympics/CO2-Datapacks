# Executed globally
# tellraw @a {"text":"oitc:game_tick"}

# Listen triggers (order is important!)
function one_in_the_chamber:triggers/death
function one_in_the_chamber:triggers/kill
function one_in_the_chamber:triggers/respawn
function one_in_the_chamber:triggers/end_game

# Force player to respawn at his last location
execute as @a[team=oitc] at @s run spawnpoint @s ~ ~ ~ ~

# Death camera animation
execute as @e[tag=oitc_death_camera] at @s run function one_in_the_chamber:animation/death_camera

# End game animation
execute if score #OITC:end_game_timer data matches 1.. as @e[tag=oitc_end_game_camera] at @s run function one_in_the_chamber:animation/end_game