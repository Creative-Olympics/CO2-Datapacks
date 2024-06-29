scoreboard players set #lib.relocalize_player.animate data 0
execute as @e[type=block_display,tag=lib.relocalize_player] at @s run function lib:relocalize_player/animate
execute if score #lib.relocalize_player.animate data matches 1 run schedule function lib:relocalize_player/next_frame 1t
