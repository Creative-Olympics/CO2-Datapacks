# Executed globally

execute as @a[scores={jump.time_left=1}] at @s run function #global:endgame_title {type:"timesup"}
execute as @a[scores={jump.time_left=1}] at @s run tellraw @s [{"text":"\nJUMP > ","bold":true,"italic":true,"color":"dark_purple"},{"text":"You arrived at step ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"@s","objective":"jump.step"},"bold":true,"italic":false,"color":"gold"},{"text":"\n"}]
