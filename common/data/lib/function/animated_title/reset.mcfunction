# Executed as and at the player
# tellraw @a [{"selector":"@s"},{"text":" > lib:animated_title/reset","color":"gray"}]

tag @s remove lib.animated_title.victory
tag @s remove lib.animated_title.defeat
tag @s remove lib.animated_title.draw
tag @s remove lib.animated_title.finish
tag @s remove lib.animated_title.timesup
tag @s remove lib.animated_title.start

scoreboard players reset @s animated_title.frame
