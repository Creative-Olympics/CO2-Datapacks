scoreboard players set #lib.start_animation.animate data 0
execute as @e[type=marker,tag=lib.start_animation] at @s run function lib:start_animation/animate with entity @s data.start_animation
execute if score #lib.start_animation.animate data matches 1 run schedule function lib:start_animation/next_frame 1t
