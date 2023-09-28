# Executed globally
# tellraw @a {"text":"oitc:stop"}

function one_in_the_chamber:reset/map

# Reset players
spreadplayers -187 -86 0 3 false @a[team=oitc]
execute as @e[team=oitc] run function one_in_the_chamber:reset/player

# Reset global data
scoreboard players set #OITC:game_started data 0
scoreboard players set #OITC:end_game_timer data 0

# Clear entities
kill @e[tag=oitc_death_camera]
kill @e[tag=oitc_end_game_camera]

