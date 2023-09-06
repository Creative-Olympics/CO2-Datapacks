# Executed globally
# tellraw @a {"text":"prophunt:triggers/prop_hitbox_attacked"}

# Detecting interaction
execute as @e[tag=prophunt.interaction,nbt={attack:{}}] at @s run function prophunt:events/prop_hitbox_attacked

# Reseting interactions
execute as @e[tag=prophunt.interaction] run data remove entity @s attack