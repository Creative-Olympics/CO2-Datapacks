scoreboard players operation #jump.time.seconds data = @s jump.timer
scoreboard players operation #jump.time.seconds data /= 20 const
execute store result score #jump.time.minutes data run scoreboard players add #jump.time.seconds data 1

scoreboard players operation #jump.time.minutes data /= 60 const
scoreboard players operation #jump.time.seconds data %= 60 const

scoreboard players operation #jump.time.first_decimal data = @s jump.timer
scoreboard players operation #jump.time.first_decimal data %= 20 const
scoreboard players operation #jump.time.first_decimal data /= 2 const

tellraw @s [{"text":"\nJUMP > ","bold":true,"italic":true,"color":"dark_purple"},{"text":"You completed the jump in ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"#jump.time.minutes","objective":"data"},"bold":true,"italic":false,"color":"gold"},{"text":"m and ","bold":false,"italic":false,"color":"gray"},{"score":{"name":"#jump.time.seconds","objective":"data"},"bold":true,"italic":false,"color":"gold"},{"text":".","bold":true,"italic":false,"color":"gold"},{"score":{"name":"#jump.time.first_decimal","objective":"data"},"bold":true,"italic":false,"color":"gold"},{"text":"s!\n","bold":false,"italic":false,"color":"gray"}]