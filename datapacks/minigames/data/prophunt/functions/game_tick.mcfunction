# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

function #prophunt:prop_display
function #prophunt:switch_prop
function #prophunt:cycle_prop_variation
# function #prophunt:stun
function #prophunt:lock_position
function #prophunt:taunt

function #prophunt:dash
function #prophunt:ping
function #prophunt:ultimate

function #prophunt:control_title
function #prophunt:climb

function #prophunt:kill_prop

scoreboard players remove $prophunt.remaining_time data 1

execute if entity @a[scores={prophunt.stop.timer=1..}] run function prophunt:features/stop/animation