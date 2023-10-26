scoreboard players operation #delta ctx = #std input
scoreboard players operation #delta ctx *= 2 const

scoreboard players set #x output 0

execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx
execute store result score #guess ctx run random value -500..500
scoreboard players operation #x output += #guess ctx

scoreboard players operation #x output *= #std input
scoreboard players operation #x output /= 1000 const
scoreboard players operation #x output += #mean input
