# Executed globally
# tellraw @a {"text":"prophunt:__tick__"}

execute if score $prophunt.game_started data matches 0 run function prophunt:lobby_tick
execute if score $prophunt.game_started data matches 1 run function prophunt:game_tick