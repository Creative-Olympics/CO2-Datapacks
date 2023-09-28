
# Victory condition
execute if score #OITC:end_game_timer data matches 0 if entity @a[team=oitc,scores={oitc_kills=10}] run function one_in_the_chamber:stop/end_game

# Only one player left
scoreboard players set #OITC:player_count data 0
execute as @a[team=oitc] run scoreboard players add #OITC:player_count data 1
execute if score #OITC:end_game_timer data matches 0 if score #OITC:player_count data matches 0..1 run function one_in_the_chamber:stop/end_game

# End game animation
execute if score #OITC:end_game_timer data matches 1.. as @e[tag=oitc_end_game_camera] at @s run function one_in_the_chamber:stop/animation