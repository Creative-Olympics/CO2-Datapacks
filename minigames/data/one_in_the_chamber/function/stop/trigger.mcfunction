execute store result score #result data if entity @a[team=oitc]
execute if score #result data matches 0 run return run function #one_in_the_chamber:events/stop
execute if score #result data matches 1 run return run function one_in_the_chamber:stop/end_game

execute if entity @a[team=oitc,scores={oitc.kill_count=10..}] run function one_in_the_chamber:stop/end_game
