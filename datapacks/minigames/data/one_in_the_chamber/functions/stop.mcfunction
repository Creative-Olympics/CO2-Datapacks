# Executed globally
tellraw @a {"text":"oitc:stop"}

# Reset map
fill -194 99 -75 -192 101 -75 air replace barrier
fill -194 98 -75 -192 98 -75 air replace mangrove_fence

fill -166 98 -92 -166 99 -96 air replace barrier
fill -166 97 -92 -166 97 -96 air replace mangrove_fence

fill -206 98 -90 -206 103 -97 air replace barrier
fill -206 97 -90 -206 97 -97 air replace mangrove_fence

fill -183 98 -106 -178 99 -106 air replace barrier
fill -183 97 -106 -178 97 -106 air replace mangrove_fence

fill -194 98 -106 -194 99 -106 air replace barrier
fill -194 97 -106 -194 97 -106 air replace mangrove_fence

# Reset players
clear @a[team=oitc]
scoreboard players reset * oitc_kills
scoreboard players reset * oitc_kills_memory
gamemode adventure @a[team=oitc]
spreadplayers -187 -86 0 3 false @a[team=oitc]
team leave @a[team=oitc]

# Reset global data
scoreboard players set #OITC:game_started data 0
scoreboard players set #OITC:end_game_timer data 0

# Clear entities
kill @e[tag=oitc_death_camera]
kill @e[tag=oitc_end_game_camera]