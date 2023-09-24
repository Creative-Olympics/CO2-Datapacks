# Executed globally
# tellraw @a {"text":"global:__tick__"}

#==============================================================================
# CONTINUOUS INFORMATIONS
#==============================================================================

# Location --------------------------------------------------------------------

execute as @e store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @e store result score @s pos.y run data get entity @s Pos[1] 1000
execute as @e store result score @s pos.z run data get entity @s Pos[2] 1000

# ID --------------------------------------------------------------------------

scoreboard players add @e SUID 0
scoreboard players add @e UUID 0
execute as @e[scores={SUID=0}] store result score @s SUID run scoreboard players add $SUID data 1
execute as @e[scores={UUID=0}] store result score @s UUID run data get entity @s UUID[0]

#==============================================================================
# TICKING FEATURES
#==============================================================================

# Animations ------------------------------------------------------------------

function global:relocalize/main
execute if entity @a[scores={global.animated_title.timer=1..}] run function global:animated_title/animation
function #global:drop
function #global:join
function #global:kill_items
function #global:living_time

#==============================================================================
# LOBBY
#==============================================================================

# Global player effects -------------------------------------------------------

team join Lobby @a[team=]
effect give @a[team=Lobby] saturation infinite 255 true
effect give @a[team=Lobby] resistance infinite 255 true
effect give @a[team=Lobby] weakness 1000000 255 true
effect give @a[team=Lobby] resistance infinite 255 true

# Prevent players to jump in the void -----------------------------------------

execute as @a[scores={pos.y=..0}] at @s run function #global:relocalize {x:-44,y:100,z:-137}

# Player status ---------------------------------------------------------------

### ⏲️ TEMPORARY: anyone can start games
tag @a add global.can_start_games


