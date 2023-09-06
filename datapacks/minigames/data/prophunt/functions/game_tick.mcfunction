# Executed globally
# tellraw @a {"text":"prophunt:game_tick"}

# Triggers
function prophunt:triggers/switch_prop
function prophunt:triggers/stun_hunters
function prophunt:triggers/prop_hitbox_attacked

# Mechanics
execute as @a[team=prophunt] at @s run function prophunt:mechanics/control_title/make
execute as @a[tag=!prophunt.is_locked] at @s run function prophunt:mechanics/sync_prop
function prophunt:mechanics/climb
execute as @a[tag=prophunt.is_locked] at @s run function prophunt:mechanics/force_ride_locker

# Animations

# Security
tag @a[team=!prophunt] remove prophunt.is_hunter
tag @a[team=!prophunt] remove prophunt.is_prop
