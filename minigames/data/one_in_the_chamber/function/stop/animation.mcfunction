scoreboard players add $oitc.end_game_timer data 1
execute as @e[type=block_display,tag=oitc.camera] at @s run tp @s ^-0.3 ^ ^ ~-1 ~
execute as @a[team=oitc] run spectate @e[type=block_display,tag=oitc.camera,limit=1] @s

execute if score $oitc.end_game_timer data matches ..99 run schedule function one_in_the_chamber:stop/animation 1t
execute if score $oitc.end_game_timer data matches 100.. run function #one_in_the_chamber:events/stop
