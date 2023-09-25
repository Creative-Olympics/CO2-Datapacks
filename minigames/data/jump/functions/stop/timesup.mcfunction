function #global:animated_title {type:"timesup"}
tellraw @s [{"text":"\nJUMP > ","bold":true,"italic":true,"color":"dark_purple"},{"text":"You arrived at step ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"@s","objective":"jump.step"},"bold":true,"italic":false,"color":"green"},{"text":"\n"}]
function #jump:reset_player