execute store result score #jump.time_left.modulo data run scoreboard players operation #jump.time_left.seconds data = @s jump.time_left
scoreboard players operation #jump.time_left.modulo data %= 20 const
scoreboard players operation #jump.time_left.seconds data /= 20 const
scoreboard players add #jump.time_left.seconds data 1

title @s[scores={jump.time_left=101..}] actionbar ["Time left: ",{"score":{"name":"#jump.time_left.seconds","objective":"data"}},"s"]
title @s[scores={jump.time_left=2..100}] actionbar [{"text":"Time left: ","color":"red","bold":true,"italic":true},{"score":{"name":"#jump.time_left.seconds","objective":"data"}},"s"]

execute unless score #jump.time_left.modulo data matches 0 run return 0
execute if score @s jump.time_left matches 1.. run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 2 0
execute if score @s jump.time_left matches 1..100 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2 0
