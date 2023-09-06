# Executed globally
tellraw @a {"text":"global:__load__"}

# Set gamerules ---------------------------------------------------------------

gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule fallDamage false

# Global objectives -----------------------------------------------------------

# Utils
scoreboard objectives add data dummy
scoreboard objectives add tmp dummy
scoreboard objectives add UUID dummy

# Continuous informations
scoreboard objectives add id dummy
scoreboard objectives add parent.id dummy
scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add living_time minecraft.custom:minecraft.time_since_death

# Trigger scores
scoreboard objectives add trigger_join minecraft.custom:minecraft.leave_game
scoreboard objectives add trigger_drop minecraft.custom:minecraft.drop

# Global data -----------------------------------------------------------------

function lib:constants
scoreboard players set SERVER_START data 1

# Global teams ----------------------------------------------------------------

team add Lobby
team modify Lobby color white
team modify Lobby friendlyFire false
