# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

function #prophunt:control_title
function #prophunt:switch_prop
function #prophunt:dash
function #prophunt:climb
function #prophunt:ping
function #prophunt:prop_display
function #prophunt:cycle_prop_variation
function #prophunt:stun
function #prophunt:lock_position
function #prophunt:taunt

scoreboard players remove $prophunt.remaining_time data 1
scoreboard players add @a[tag=prophunt.is_hunter] prophunt.ultimate_points 2