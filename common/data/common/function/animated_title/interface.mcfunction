# Executed as and at the player
# Usage: function #common:animated_title {type:"<victory|defeat|draw>"}
# tellraw @a [{"selector":"@s"},{"text":" > common:animated_title/start","color":"gray"}]

$tag @s add common.animated_title.$(type)

execute if entity @s[ \
  tag=!common.animated_title.defeat, \
  tag=!common.animated_title.draw, \
  tag=!common.animated_title.finish, \
  tag=!common.animated_title.start, \
  tag=!common.animated_title.timesup, \
  tag=!common.animated_title.victory \
] run return run function common:animated_title/reset

scoreboard players set @s animated_title.frame 0

title @s times 0 20 20
execute if entity @s[tag=common.animated_title.defeat] run function common:animated_title/defeat/run
execute if entity @s[tag=common.animated_title.draw] run function common:animated_title/draw/run
execute if entity @s[tag=common.animated_title.finish] run function common:animated_title/finish/run
execute if entity @s[tag=common.animated_title.start] run function common:animated_title/start/run
execute if entity @s[tag=common.animated_title.timesup] run function common:animated_title/timesup/run
execute if entity @s[tag=common.animated_title.victory] run function common:animated_title/victory/run
