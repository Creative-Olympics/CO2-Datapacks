# Executed as and at the player
# Usage: function #lib:animated_title {type:"<victory|defeat|draw>"}
# tellraw @a [{"selector":"@s"},{"text":" > lib:animated_title/start","color":"gray"}]

$tag @s add lib.animated_title.$(type)

execute if entity @s[ \
  tag=!lib.animated_title.defeat, \
  tag=!lib.animated_title.draw, \
  tag=!lib.animated_title.finish, \
  tag=!lib.animated_title.start, \
  tag=!lib.animated_title.timesup, \
  tag=!lib.animated_title.victory \
] run return run function lib:animated_title/reset

scoreboard players set @s animated_title.frame 0

title @s times 0 20 20
execute if entity @s[tag=lib.animated_title.defeat] run function lib:animated_title/defeat/run
execute if entity @s[tag=lib.animated_title.draw] run function lib:animated_title/draw/run
execute if entity @s[tag=lib.animated_title.finish] run function lib:animated_title/finish/run
execute if entity @s[tag=lib.animated_title.start] run function lib:animated_title/start/run
execute if entity @s[tag=lib.animated_title.timesup] run function lib:animated_title/timesup/run
execute if entity @s[tag=lib.animated_title.victory] run function lib:animated_title/victory/run
