# Executed as and at the player
# tellraw @a [{"selector":"@s"},{"text":" > global:features/endgame_title/stop","color":"gray"}]

tag @s remove global.endgame_title.victory
tag @s remove global.endgame_title.defeat
tag @s remove global.endgame_title.draw
tag @s remove global.endgame_title.finish
tag @s remove global.endgame_title.timesup

scoreboard players set @s global.endgame_title.timer 0
