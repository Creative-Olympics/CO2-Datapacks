# Executed globally
# tellraw @a {"text":"global:__tick__"}

# Listen triggers -------------------------------------------------------------

function global:triggers/drop
function global:triggers/join

# Living time -----------------------------------------------------------------

# Positive : count the time since last death
# Negative : give the time before the entity will be killed
kill @e[scores={living_time=-1}]

# ID --------------------------------------------------------------------------

scoreboard players add @a id 0
execute as @e[scores={id=0}] run function lib:get_id

# Location --------------------------------------------------------------------

execute as @a store result score @s loc.x run data get entity @s Pos[0] 1
execute as @a store result score @s loc.y run data get entity @s Pos[1] 1
execute as @a store result score @s loc.z run data get entity @s Pos[2] 1

# Global player effects -------------------------------------------------------

effect give @a[team=Lobby] saturation infinite 255 true
effect give @a[team=Lobby] resistance infinite 255 true
effect give @a[team=Lobby] weakness 1000000 255 true
effect give @a[team=Lobby] resistance infinite 255 true

# Player status ---------------------------------------------------------------

# ⏲️ TEMPORARY: anyone can start games
tag @a add canLaunchGames