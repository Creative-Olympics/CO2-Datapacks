execute store result score #oitc.bits data run scoreboard players add #oitc.count data 1

execute if score #oitc.bits data matches 64.. run tag @s add oitc.b6
execute if score #oitc.bits data matches 64.. run scoreboard players remove #oitc.bits data 64
execute if score #oitc.bits data matches 32.. run tag @s add oitc.b5
execute if score #oitc.bits data matches 32.. run scoreboard players remove #oitc.bits data 32
execute if score #oitc.bits data matches 16.. run tag @s add oitc.b4
execute if score #oitc.bits data matches 16.. run scoreboard players remove #oitc.bits data 16
execute if score #oitc.bits data matches 8.. run tag @s add oitc.b3
execute if score #oitc.bits data matches 8.. run scoreboard players remove #oitc.bits data 8
execute if score #oitc.bits data matches 4.. run tag @s add oitc.b2
execute if score #oitc.bits data matches 4.. run scoreboard players remove #oitc.bits data 4
execute if score #oitc.bits data matches 2.. run tag @s add oitc.b1
execute if score #oitc.bits data matches 2.. run scoreboard players remove #oitc.bits data 2
execute if score #oitc.bits data matches 1 run tag @s add oitc.b0
