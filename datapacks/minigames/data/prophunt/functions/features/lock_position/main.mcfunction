# Executed globally
# tellraw @a {"text":"prophunt:features/lock_position/main"}

execute as @a[tag=prophunt.is_locked] at @s run function prophunt:features/lock_position/force_ride_locker
execute as @e[tag=prophunt.interaction,nbt={attack:{}}] at @s run function prophunt:features/lock_position/toggle