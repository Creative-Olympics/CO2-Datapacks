scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

scoreboard objectives add const dummy
scoreboard objectives add input dummy
scoreboard objectives add output dummy
scoreboard objectives add data dummy
scoreboard objectives add ctx dummy

scoreboard objectives add animated_title.frame dummy
scoreboard objectives add relocalize_player.frame dummy
scoreboard objectives add start_animation.frame dummy

function common:constants
scoreboard players reset * bs.id

team add lobby
team modify lobby color white
team modify lobby friendlyFire false
team modify lobby seeFriendlyInvisibles true

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
# TODO: to enable to avoid hacks like showing the hitbox in prophunt
gamerule reducedDebugInfo false

tag B5-0-0-0-1 add permanent
tag B5-0-0-0-2 add permanent
tag B5-0-0-0-3 add permanent
kill @e[type=!player,type=!item_frame,type=!painting,tag=!permanent]
