# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

scoreboard players add #prophunt.start_sign_timer data 1
execute if score #prophunt:start_anim data matches 0 unless block 112 82 66 air run scoreboard players set #prophunt.start_sign_timer data 0
execute if score #prophunt:start_anim data matches 1.. run scoreboard players set #prophunt.start_sign_timer data 0
execute if score #prophunt.start_sign_timer data matches 1.. run particle cloud 112.5 82.2 66.5 0 0 0 0.02 1 normal
execute if score #prophunt.start_sign_timer data matches 200.. run function prophunt:map/place_starting_sign