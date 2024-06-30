# Executed as and at the player
# tellraw @a [{"selector":"@s"},{"text":" > common:animated_title/reset","color":"gray"}]

tag @s remove common.animated_title.victory
tag @s remove common.animated_title.defeat
tag @s remove common.animated_title.draw
tag @s remove common.animated_title.finish
tag @s remove common.animated_title.timesup
tag @s remove common.animated_title.start

scoreboard players reset @s animated_title.frame
