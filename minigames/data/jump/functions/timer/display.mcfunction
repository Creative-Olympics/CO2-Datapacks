
scoreboard players operation #jump.time_left.seconds data = @s jump.time_left
scoreboard players operation #jump.time_left.seconds data /= 20 const
scoreboard players add #jump.time_left.seconds data 1

scoreboard players operation #jump.time_left.modulo data = @s jump.time_left
scoreboard players operation #jump.time_left.modulo data %= 20 const

execute if score @s jump.time_left matches 1.. if score #jump.time_left.modulo data matches 0 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 2 0
execute if score @s jump.time_left matches 1..100 if score #jump.time_left.modulo data matches 0 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2 0

title @s[scores={jump.time_left=101..}] actionbar ["",{"text":"Time left: "},{"score":{"name":"#jump.time_left.seconds","objective":"data"}},{"text":"s"}]
title @s[scores={jump.time_left=2..100}] actionbar ["",{"text":"Time left: ","color":"red","bold":true,"italic":true},{"score":{"name":"#jump.time_left.seconds","objective":"data"},"color":"red","bold":true,"italic":true},{"text":"s","color":"red","bold":true,"italic":true}]
title @s[scores={jump.time_left=1}] actionbar ["",{"text":" "}]
