playsound minecraft:block.note_block.pling master @s[tag=!canLaunchGames] ~ ~ ~ 2 2 1
tellraw @s[tag=!canLaunchGames] {"text":"✘ You don't have the permission to launch this game.","color":"red"}



execute if entity @s[tag=canLaunchGames] run function tnt_run:launch_timer

tag @a remove tnt_run.justJoined
tag @a remove tnt_run.inGame
tag @a remove tnt_run.justDied
tag @a remove tnt_run.lastAlive
