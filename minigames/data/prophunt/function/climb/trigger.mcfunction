# Start climb if player jump and face climbable blocks
execute as @a[team=prophunt,scores={prophunt.jump=1..}] unless score @s prophunt.climb matches 1.. at @s rotated ~ 0 positioned ^ ^ ^0.7 if predicate prophunt:can_climb run function prophunt:climb/start

# Climb process & animation
execute as @a[team=prophunt,scores={prophunt.climb=1..}] at @s run function prophunt:climb/process

# Manage jump trigger
scoreboard players add @a[team=prophunt,scores={prophunt.jump=1..}] prophunt.jump 1
scoreboard players reset @a[team=prophunt,scores={prophunt.jump=20..}] prophunt.jump
scoreboard players reset @a[team=prophunt,scores={prophunt.climb=1..}] prophunt.jump
