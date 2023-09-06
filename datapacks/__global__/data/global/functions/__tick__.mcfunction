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

execute as @a store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @a store result score @s pos.y run data get entity @s Pos[1] 1000
execute as @a store result score @s pos.z run data get entity @s Pos[2] 1000

# Global player effects -------------------------------------------------------

effect give @a[team=Lobby] saturation infinite 255 true
effect give @a[team=Lobby] resistance infinite 255 true
effect give @a[team=Lobby] weakness 1000000 255 true
effect give @a[team=Lobby] resistance infinite 255 true

# Player status ---------------------------------------------------------------

# ⏲️ TEMPORARY: anyone can start games
tag @a add canLaunchGames

scoreboard players add @e SUID 0
scoreboard players add @e UUID 0
execute as @e[scores={SUID=0}] store result score @s SUID run scoreboard players add $SUID data 1
execute as @e[scores={UUID=0}] store result score @s UUID run data get entity @s UUID[0]