# Executed as and at the player
# tellraw @a [{"selector":"@s"},{"text":" > global:features/animated_title/stop","color":"gray"}]

tag @s remove global.animated_title.victory
tag @s remove global.animated_title.defeat
tag @s remove global.animated_title.draw
tag @s remove global.animated_title.finish
tag @s remove global.animated_title.timesup
tag @s remove global.animated_title.start

scoreboard players set @s global.animated_title.timer 0
