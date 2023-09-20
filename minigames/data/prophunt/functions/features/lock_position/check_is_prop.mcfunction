# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:features/lock_position/check_is_prop"}

# Get attacker SUID
execute store result score #check_UUID data run data get entity @s attack.player[0]

# Identify the attacker
execute as @a[tag=prophunt.is_prop] if score @s UUID = #check_UUID data run function prophunt:features/lock_position/toggle