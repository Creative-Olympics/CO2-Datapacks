effect clear @s minecraft:levitation

scoreboard players reset @s prophunt.climb
scoreboard players reset @s prophunt.jump

# Spawn particles if there is a block above the player
execute rotated ~ 0 unless block ^ ^2 ^-0.2 #prophunt:can_walk_through run particle end_rod ~ ~ ~ 0 0 0 0 1 force
