execute at @s run particle dust 0.565 0.000 1.000 1 ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a
tp @s -311.5 97 16.5 0 0
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 2 0
execute at @s run particle dust 0.565 0.000 1.000 1 ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a
function #global:animated_title {type:"timesup"}
tellraw @s [{"text":"\nJUMP > ","bold":true,"italic":true,"color":"dark_purple"},{"text":"You arrived at step ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"@s","objective":"jump.step"},"bold":true,"italic":false,"color":"green"},{"text":"\n"}]
function #jump:reset_player