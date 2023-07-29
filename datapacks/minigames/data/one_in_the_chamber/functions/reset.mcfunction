# Executed globally
tellraw @a {"text":"oitc:reset"}

# Stop game if one is started
function one_in_the_chamber:stop

# Reset potentially not reseted data
scoreboard players set #OITC:start_anim data 0

# Kill potentially remaining entities
kill @e[type=marker,tag=OITC_start_anim]