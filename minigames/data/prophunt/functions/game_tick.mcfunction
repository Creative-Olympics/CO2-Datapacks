# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

# Features --------------------------------------------------------------------
# /!\Order is important

function #prophunt:prop_display
function #prophunt:switch_prop
function #prophunt:cycle_prop_variation
function #prophunt:stun
function #prophunt:lock_position
function #prophunt:taunt

function #prophunt:dash
function #prophunt:ping
function #prophunt:ultimate

function #prophunt:control_title
function #prophunt:climb

function #prophunt:kill_prop

function #prophunt:timer

execute at @a[team=prophunt] as @e[tag=lobby.horse,distance=..3] run function lobby:horse/kill

# Clear -----------------------------------------------------------------------

execute as @e[tag=prophunt.interaction] run data remove entity @s attack
execute as @e[tag=prophunt.interaction] run data remove entity @s interaction

# End game --------------------------------------------------------------------

function prophunt:stop/trigger