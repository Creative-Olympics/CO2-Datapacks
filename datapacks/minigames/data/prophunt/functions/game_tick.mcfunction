# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

# Triggers --------------------------------------------------------------------

function prophunt:triggers/switch_prop
function prophunt:triggers/stun_hunters
function prophunt:triggers/prop_hitbox_attacked
function prophunt:triggers/stuned

# Mechanics -------------------------------------------------------------------

execute as @a[team=prophunt] at @s run function prophunt:mechanics/control_title/make
function prophunt:mechanics/climb
execute as @a[tag=prophunt.is_locked] at @s run function prophunt:utils/force_ride_locker

# Animations ------------------------------------------------------------------

# Synchronize prop displays and hitbox
execute as @a[tag=prophunt.is_prop] at @s run function prophunt:animations/sync_prop

# Security --------------------------------------------------------------------

tag @a[team=!prophunt] remove prophunt.is_hunter
tag @a[team=!prophunt] remove prophunt.is_prop
