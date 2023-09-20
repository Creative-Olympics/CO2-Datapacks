# Executed globally
# tellraw @a {"text":"oitc:triggers/end_game"}

execute if score #OITC:end_game_timer data matches 0 if entity @a[team=oitc,scores={oitc_kills=10}] run function one_in_the_chamber:events/end_game

execute if score #OITC:end_game_timer data matches 0 at @r[team=oitc] unless entity @r[team=oitc,distance=0.1..] run function one_in_the_chamber:events/end_game