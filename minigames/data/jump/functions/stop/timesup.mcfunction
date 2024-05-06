tp @s -311.5 97 16.5 0 0
particle dust{color:[0.565,0.000,1.000],scale:1} ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 2 0
execute at @s run particle dust{color:[0.565,0.000,1.000],scale:1} ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a

tellraw @s [{"text":"\nJUMP > ","bold":true,"italic":true,"color":"dark_purple"},{"text":"You arrived at step ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"@s","objective":"jump.step"},"bold":true,"italic":false,"color":"green"},{"text":"\n"}]

function #lib:animated_title {type:"timesup"}
function jump:stop/leave
