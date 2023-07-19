# Executed globally
tellraw @a {"text":"oitc:reset"}

# Stop game if one is started
execute if score #OITC:game_started data matches 1 run function one_in_the_chamber:stop