scoreboard objectives add thimble dummy
scoreboard objectives add thimble.lives dummy

playsound minecraft:block.note_block.pling master @s[tag=!canLaunchGames] ~ ~ ~ 2 2 1
tellraw @s[tag=!canLaunchGames] {"text":"✘ You don't have the permission to launch this game.","color":"red"}

execute if entity @s[tag=canLaunchGames] run function mg:thimble/game/launch_timer

tag @a remove thimble.inGame
