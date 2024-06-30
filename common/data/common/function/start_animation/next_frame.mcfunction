scoreboard players set #common.start_animation.animate data 0
execute as @e[type=marker,tag=common.start_animation] at @s run function common:start_animation/animate with entity @s data.start_animation
execute if score #common.start_animation.animate data matches 1 run schedule function common:start_animation/next_frame 1t
