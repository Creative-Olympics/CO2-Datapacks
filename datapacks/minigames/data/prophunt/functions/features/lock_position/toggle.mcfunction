# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:features/lock_position/toggle"}

function prophunt:utils/get_associated_entities

# Get attacker SUID
execute store result score #check_UUID data run data get entity @s attack.player[0]

# Identify the attacker
execute as @a[team=prophunt] if score @s UUID = #check_UUID data run tag @s add prophunt.current.attacker

# If the attacker is an hunter -> kill the prop
# execute if entity @a[tag=prophunt.current.attacker,tag=prophunt.hunter] as @p[tag=prophunt.current.player] run function prophunt:features/kill

# If the attacker is th prop himself -> lock the prop
tag @a[tag=prophunt.current.attacker,tag=prophunt.current.player,tag=prophunt.is_locked] add prophunt.unlock
execute as @a[tag=prophunt.current.attacker,tag=prophunt.current.player,tag=!prophunt.is_locked] at @s run function prophunt:features/lock_position/lock
execute as @a[tag=prophunt.current.attacker,tag=prophunt.current.player,tag=prophunt.unlock] at @s run function prophunt:features/lock_position/unlock
tag @a remove prophunt.unlock

# Remove identification tag
tag @a remove prophunt.current.attacker

# Remove attack nbt
data remove entity @s attack