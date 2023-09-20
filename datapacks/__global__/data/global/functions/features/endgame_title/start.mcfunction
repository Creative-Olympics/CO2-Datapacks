# Executed as and at the player
# Usage: function #global:endgame_title {type:"[victory/defeat/draw]"}
# tellraw @a [{"selector":"@s"},{"text":" > global:features/endgame_title/start","color":"gray"}]

$tag @s add global.endgame_title.$(type)

playsound minecraft:ui.toast.challenge_complete master @s[tag=!global.endgame_title.defeat,tag=!global.endgame_title.timesup] ~ ~ ~ 2 1 1
playsound minecraft:entity.wither.death master @s[tag=global.endgame_title.defeat] ~ ~ ~ 2 1 1
playsound minecraft:entity.wither.death master @s[tag=global.endgame_title.timesup] ~ ~ ~ 2 1 1

scoreboard players set @s global.endgame_title.timer 1
