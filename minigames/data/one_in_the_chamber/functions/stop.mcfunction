# Executed globally
# tellraw @a {"text":"oitc:stop"}


# Reset players
clear @a[team=oitc]
effect clear @a[team=oitc]
scoreboard players reset * oitc_kills
scoreboard players reset * oitc_kills_memory
gamemode adventure @a[team=oitc]
spreadplayers -187 -86 0 3 false @a[team=oitc]
team join lobby @a[team=oitc]

# Reset global data
scoreboard players set #OITC:game_started data 0
scoreboard players set #OITC:end_game_timer data 0

# Clear entities
kill @e[tag=oitc_death_camera]
kill @e[tag=oitc_end_game_camera]

