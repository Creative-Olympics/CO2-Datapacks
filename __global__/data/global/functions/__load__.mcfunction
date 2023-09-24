# Executed globally
# tellraw @a {"text":"global:__load__"}

# Set gamerules ---------------------------------------------------------------

gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule fallDamage false

#==============================================================================
# GLOBAL DATA
#==============================================================================

# Common ----------------------------------------------------------------------

scoreboard objectives add data dummy
scoreboard objectives add tmp dummy
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

function #bs.sidebar:reset

# Endgame title ---------------------------------------------------------------

scoreboard objectives add global.animated_title.timer dummy

# Living time -----------------------------------------------------------------

scoreboard objectives add living_time minecraft.custom:minecraft.time_since_death

# Relocalization --------------------------------------------------------------

scoreboard objectives add reloc.timer dummy
scoreboard objectives add reloc.x dummy
scoreboard objectives add reloc.y dummy
scoreboard objectives add reloc.z dummy
scoreboard objectives add reloc.vx dummy
scoreboard objectives add reloc.vy dummy
scoreboard objectives add reloc.vz dummy

# Trigger scores
scoreboard objectives add global.join_trigger minecraft.custom:minecraft.leave_game
scoreboard objectives add global.drop_trigger minecraft.custom:minecraft.drop


# Global teams ----------------------------------------------------------------

team add Lobby
team modify Lobby color white
team modify Lobby friendlyFire false
team modify Lobby seeFriendlyInvisibles false
team join Lobby @a

# Constants
scoreboard players set 10 const 10
scoreboard players set 20 const 20
scoreboard players set 1000 const 1000


### TO REMOVE
scoreboard players set SERVER_START data 1
