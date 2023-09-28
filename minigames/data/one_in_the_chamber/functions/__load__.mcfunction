# Executed globally
# tellraw @a {"text":"oitc:__load__"}

# Scores setup
scoreboard objectives add oitc_kills playerKillCount {"text":" OITC ","color":"red","bold":true,"italic":true}
scoreboard objectives add oitc_kills_memory dummy {"text":"OITC Kills Memory","color":"red"}
scoreboard objectives add oitc_time_since_death minecraft.custom:minecraft.time_since_death {"text":"OITC Time Since Death","color":"red"}

# Team setup
team add oitc
team modify oitc color red
team modify oitc friendlyFire true
team modify oitc collisionRule pushOwnTeam
team modify oitc nametagVisibility never

# Reset
function #one_in_the_chamber:stop