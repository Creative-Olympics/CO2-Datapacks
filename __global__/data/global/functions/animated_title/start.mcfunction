# Executed as and at the player
# Usage: function #global:animated_title {type:"[victory/defeat/draw]"}
# tellraw @a [{"selector":"@s"},{"text":" > global:features/animated_title/start","color":"gray"}]

$tag @s add global.animated_title.$(type)

title @s times 0 20 20
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s[tag=!global.animated_title.defeat,tag=!global.animated_title.timesup,tag=!global.animated_title.start] ~ ~ ~ 2 1 1
execute at @s run playsound minecraft:entity.wither.death master @s[tag=global.animated_title.defeat] ~ ~ ~ 2 1 1
execute at @s run playsound minecraft:entity.wither.death master @s[tag=global.animated_title.timesup] ~ ~ ~ 2 1 1
execute at @s run playsound minecraft:entity.player.levelup master @s[tag=global.animated_title.start] ~ ~ ~ 2 1 1

scoreboard players set @s global.animated_title.timer 1
