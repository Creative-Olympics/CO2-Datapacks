execute store result score #jump.timer.seconds data run scoreboard players operation #jump.timer.deciseconds data = @s jump.timer

scoreboard players operation #jump.timer.deciseconds data %= 20 const
scoreboard players operation #jump.timer.deciseconds data /= 2 const

scoreboard players operation #jump.timer.seconds data /= 20 const
execute store result score #jump.timer.minutes data run scoreboard players add #jump.timer.seconds data 1
scoreboard players operation #jump.timer.minutes data /= 60 const
scoreboard players operation #jump.timer.seconds data %= 60 const

tellraw @s [{"text":"\nJUMP > ","bold":true,"italic":true,"color":"dark_purple"},{"text":"You completed the jump in ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"#jump.timer.minutes","objective":"data"},"bold":true,"italic":false,"color":"green"},{"text":"m and ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"#jump.timer.seconds","objective":"data"},"bold":true,"italic":false,"color":"green"},{"text":".","bold":true,"italic":false,"color":"green"},{"score":{"name":"#jump.timer.deciseconds","objective":"data"},"bold":true,"italic":false,"color":"green"},{"text":"s!\n","bold":false,"italic":false,"color":"gray"}]

function #lib:animated_title {type:"finish"}
function jump:stop/reset_player
