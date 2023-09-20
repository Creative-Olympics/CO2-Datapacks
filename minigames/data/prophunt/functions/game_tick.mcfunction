# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

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

scoreboard players remove $prophunt.remaining_time data 1

scoreboard players set #prophunt.prop_count data 0
execute as @a[tag=prophunt.is_prop] run scoreboard players add #prophunt.prop_count data 1
execute if score #prophunt.prop_count data matches 0 run function #prophunt:stop

scoreboard players set #prophunt.hunter_count data 0
execute as @a[tag=prophunt.is_hunter] run scoreboard players add #prophunt.hunter_count data 1
execute if score #prophunt.hunter_count data matches 0 run function #prophunt:stop