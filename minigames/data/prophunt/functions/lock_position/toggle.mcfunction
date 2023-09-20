# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:lock_position/toggle"}

function prophunt:utils/get_associated_entities

# If the attacker is th prop himself -> lock the prop
tag @a[tag=prophunt.current.player,tag=prophunt.is_locked] add prophunt.unlock
execute as @a[tag=prophunt.current.player,tag=!prophunt.is_locked] at @s run function prophunt:lock_position/lock
execute as @a[tag=prophunt.current.player,tag=prophunt.unlock] at @s run function prophunt:lock_position/unlock
tag @a remove prophunt.unlock

# Remove attack nbt
execute as @e[tag=prophunt.current.interaction] run data remove entity @s attack