# Executed as and at the player
# tellraw @a {"text":"prophunt:mechanics/sync_prop"}

# Identify player to sync
tag @s add prophunt.sync_prop.player
# Identify associated prop display entities
execute as @e[tag=prophunt.prop_display] if score @s prophunt.parent_UUID = @a[tag=prophunt.sync_prop.player,limit=1,sort=nearest] UUID run tag @s add prophunt.sync_prop.displays
# Identify associated prop hitbox entity
execute as @e[tag=prophunt.prop_hitbox] if score @s prophunt.parent_UUID = @a[tag=prophunt.sync_prop.player,limit=1,sort=nearest] UUID run tag @s add prophunt.sync_prop.hitbox

# Sync display position
tp @e[tag=prophunt.sync_prop.displays] @p[tag=prophunt.sync_prop.player]
execute as @e[tag=prophunt.sync_prop.displays] at @s run tp @s ~ ~ ~ ~180 0
function prophunt:mechanics/shift_prop_displays
execute as @e[tag=prophunt.sync_prop.displays] at @s run tp @s ^-0.501 ^-0.001 ^-0.501

# Sync hitbox position
tp @e[tag=prophunt.sync_prop.hitbox] @p[tag=prophunt.sync_prop.player]
execute as @e[tag=prophunt.sync_prop.hitbox] at @s run tp @s ~ ~ ~ 0 0

# Remove identification tags
tag @s remove prophunt.sync_prop.player
tag @s remove prophunt.sync_prop.displays
tag @s remove prophunt.sync_prop.hitbox
