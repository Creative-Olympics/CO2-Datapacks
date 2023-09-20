# Executed as and at the interacted entity
# tellraw @a [{"text":"prophunt:cycle_prop_variation/interaction   as   "},{"selector":"@s"}]

function prophunt:utils/get_associated_entities

# Get actor SUID
execute store result score #check_UUID data run data get entity @s interaction.player[0]

# Identify the actor
execute as @a[team=prophunt] if score @s UUID = #check_UUID data run tag @s add prophunt.current.actor

# If the actor is the prop himself -> cycle prop variation
execute as @a[tag=prophunt.current.actor,tag=prophunt.current.player] at @s run function prophunt:cycle_prop_variation/run

# Remove identification tag
tag @a remove prophunt.current.actor

# Remove interaction
data remove entity @s interaction