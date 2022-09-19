tag @a remove thimble.yourTurn
scoreboard players add TURN thimble 1

scoreboard players operation @a[tag=thimble.inGame] thimble -= TURN thimble

tag @a[tag=thimble.inGame,scores={thimble=0,thimble.lives=1..}] add thimble.yourTurn
scoreboard players set @a[tag=thimble.yourTurn] countdown 61

execute unless entity @a[tag=thimble.inGame,scores={thimble=0..,thimble.lives=1..}] run tag @e[limit=1] add thimble.resetTurn

scoreboard players operation @a[tag=thimble.inGame] thimble += TURN thimble

# Reset loop
execute if entity @e[tag=thimble.resetTurn] run scoreboard players set TURN thimble 0
tag @e remove thimble.resetTurn

# Loop
execute unless entity @a[tag=thimble.inGame,tag=thimble.yourTurn,scores={thimble.lives=1..}] run function gt:game/dac/get_next_player
