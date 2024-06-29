scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add const dummy
scoreboard objectives add input dummy
scoreboard objectives add output dummy
scoreboard objectives add data dummy
scoreboard objectives add ctx dummy

scoreboard objectives add animated_title.frame dummy
scoreboard objectives add relocalize_player.frame dummy
scoreboard objectives add start_animation.frame dummy

function lib:constants

scoreboard players reset * bs.id

# Set gamerules ---------------------------------------------------------------

gamerule announceAdvancements false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule doFireTick false
gamerule doTileDrops false
