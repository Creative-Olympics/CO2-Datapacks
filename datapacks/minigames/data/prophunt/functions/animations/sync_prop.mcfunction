# Executed as and at the player
# tellraw @a {"text":"prophunt:animations/sync_prop"}

function prophunt:utils/get_associated_entities

# Move displays on the locker
tp @e[tag=prophunt.current.display] @e[tag=prophunt.current.locker,limit=1,sort=nearest]

# invert there rotation to be more intuitive (it face the player camera)
execute as @e[tag=prophunt.current.display] at @s run tp @s ~ ~ ~ ~180 0

# Shift complexe displays
function prophunt:utils/shift_prop_displays

# If the locker is an entity (locked prop), force displays that should not be rotated
execute if entity @e[tag=prophunt.current.locker,type=!player] as @e[tag=prophunt.current.display,tag=prophunt.display.never_rotate] at @s run tp @s ~ ~ ~ 0 0

# Align displays to the grid
execute as @e[tag=prophunt.current.display] at @s run tp @s ^-0.501 ^-0.001 ^-0.501

# Sync hitbox position
tp @e[tag=prophunt.current.interaction] @e[tag=prophunt.current.locker,limit=1,sort=nearest]
execute as @e[tag=prophunt.current.interaction] at @s run tp @s ~ ~ ~ ~ 0
