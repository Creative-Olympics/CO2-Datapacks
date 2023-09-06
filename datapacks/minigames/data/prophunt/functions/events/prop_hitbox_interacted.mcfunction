# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:events/prop_hitbox_interacted"}

function prophunt:utils/get_associated_entities

# Get actor SUID
execute store result score #check_UUID data run data get entity @s interaction.player[0]

# Identify the actor
execute as @a[team=prophunt] if score @s UUID = #check_UUID data run tag @s add prophunt.current.actor

# If the actor is the prop himself -> cycle prop variation
execute as @a[tag=prophunt.current.actor,tag=prophunt.current.player] run function prophunt:events/cycle_prop_variation

# Remove identification tag
tag @a remove prophunt.current.actor