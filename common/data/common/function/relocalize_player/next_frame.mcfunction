scoreboard players set #common.relocalize_player.animate data 0
execute as @e[type=block_display,tag=common.relocalize_player] at @s run function common:relocalize_player/animate
execute if score #common.relocalize_player.animate data matches 1 run schedule function common:relocalize_player/next_frame 1t
