# Executed as and at the player
# tellraw @a {"text":"prophunt:mechanics/force_ride_locker"}

# Identify player to lock
tag @s add prophunt.force_ride_locker.player
# Identify locker entity
execute as @e[tag=prophunt.locker] if score @s prophunt.parent_UUID = @a[tag=prophunt.force_ride_locker.player,limit=1,sort=nearest] UUID run tag @s add prophunt.force_ride_locker.locker
# Identify associated prop display entities
execute as @e[tag=prophunt.prop_display] if score @s prophunt.parent_UUID = @a[tag=prophunt.force_ride_locker.player,limit=1,sort=nearest] UUID run tag @s add prophunt.force_ride_locker.displays
# Identify associated prop hitbox entity
execute as @e[tag=prophunt.prop_hitbox] if score @s prophunt.parent_UUID = @a[tag=prophunt.force_ride_locker.player,limit=1,sort=nearest] UUID run tag @s add prophunt.force_ride_locker.hitbox

# If the entity doesn't exist anymore, unlock the player
execute unless entity @e[tag=prophunt.force_ride_locker.locker] run function prophunt:events/unlock_prop

# Force player to ride the locker entity
ride @s mount @e[tag=prophunt.force_ride_locker.locker,limit=1,sort=nearest]

# Sync display position
tp @e[tag=prophunt.sync_prop.displays] @e[tag=prophunt.force_ride_locker.locker,limit=1,sort=nearest]
execute as @e[tag=prophunt.sync_prop.displays] at @s run tp @s ~ ~ ~ ~180 0
function prophunt:mechanics/shift_prop_displays
execute as @e[tag=prophunt.sync_prop.displays,tag=prophunt.display.never_rotate] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=prophunt.sync_prop.displays] at @s run tp @s ^-0.499 ^0.001 ^-0.499

# Sync hitbox position
tp @e[tag=prophunt.sync_prop.hitbox] @e[tag=prophunt.force_ride_locker.locker,limit=1,sort=nearest]
execute as @e[tag=prophunt.sync_prop.hitbox] at @s run tp @s ~ ~ ~ 0 0

# Remove identification tags
tag @s remove prophunt.force_ride_locker.player
tag @e remove prophunt.force_ride_locker.locker
tag @e remove prophunt.force_ride_locker.displays
tag @e remove prophunt.force_ride_locker.hitbox
