# Executed globally
# tellraw @a {"text":"global:__load__"}

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
gamerule fallDamage true
gamerule fireDamage false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule showDeathMessages false

#==============================================================================
# GLOBAL DATA
#==============================================================================

# Common ----------------------------------------------------------------------

scoreboard objectives add data dummy
scoreboard objectives add input dummy
scoreboard objectives add output dummy
scoreboard objectives add ctx dummy
function lib:constants

# Continuous informations -----------------------------------------------------

scoreboard objectives add SUID dummy
scoreboard objectives add UUID dummy
scoreboard objectives add parent.SUID dummy
scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add health health {"text":"❤","color":"red"}

#==============================================================================
# Features
#==============================================================================


# Endgame title ---------------------------------------------------------------



# Living time -----------------------------------------------------------------

scoreboard objectives add living_time dummy

# Relocalization --------------------------------------------------------------

scoreboard objectives add reloc.timer dummy
scoreboard objectives add reloc.x dummy
scoreboard objectives add reloc.y dummy
scoreboard objectives add reloc.z dummy
scoreboard objectives add reloc.rot dummy
scoreboard objectives add reloc.vx dummy
scoreboard objectives add reloc.vy dummy
scoreboard objectives add reloc.vz dummy

# Trigger scores
scoreboard objectives add global.join_trigger minecraft.custom:minecraft.leave_game
scoreboard objectives add global.drop_trigger minecraft.custom:minecraft.drop


# Global teams ----------------------------------------------------------------

team add lobby
team modify lobby color white
team modify lobby friendlyFire false
team modify lobby seeFriendlyInvisibles true
#team join lobby @a

# Constants
scoreboard players set 10 const 10
scoreboard players set 20 const 20
scoreboard players set 180 const 180
scoreboard players set 360 const 360
scoreboard players set 1000 const 1000

tag B5-0-0-0-1 add permanent
tag B5-0-0-0-2 add permanent
tag B5-0-0-0-3 add permanent
kill @e[type=!player,type=!item_frame,type=!painting,tag=!permanent]

### TO REMOVE
scoreboard players set SERVER_START data 1
