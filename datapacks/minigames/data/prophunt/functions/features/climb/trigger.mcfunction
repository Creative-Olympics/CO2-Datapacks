
# Start climb if player jump and face climbable blocks
execute as @a[scores={prophunt.jump_trigger=1..,prophunt.climb=0}] at @s rotated ~ 0 positioned ^ ^ ^0.7 if predicate prophunt:can_climb run function prophunt:features/climb/start

# Climb animation
execute as @a[scores={prophunt.climb=1..}] at @s run function prophunt:features/climb/animation

# Manage jump trigger
scoreboard players add @a[scores={prophunt.jump_trigger=1..}] prophunt.jump_trigger 1
scoreboard players set @a[scores={prophunt.jump_trigger=20..}] prophunt.jump_trigger 0
scoreboard players set @a[scores={prophunt.climb=1..}] prophunt.jump_trigger 0