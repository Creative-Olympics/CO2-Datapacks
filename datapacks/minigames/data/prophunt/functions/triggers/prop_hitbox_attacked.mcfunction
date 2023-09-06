# Executed globally
# tellraw @a {"text":"prophunt:triggers/lock_prop"}

# Detecting interaction
execute as @e[tag=prophunt.prop_hitbox,nbt={attack:{}}] run function prophunt:events/prop_hitbox_attacked

# Reseting interactions
execute as @e[tag=prophunt.prop_hitbox] run data remove entity @s attack