# Executed globally
# tellraw @a {"text":"oitc:__tick__"}

execute if score #OITC:game_started data matches 0 run function one_in_the_chamber:lobby_tick
execute if score #OITC:game_started data matches 1 run function one_in_the_chamber:game_tick