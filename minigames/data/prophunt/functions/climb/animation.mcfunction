

# Anti blocking system (bring back the player if there is a small obstacle)
execute as @a[scores={prophunt.climb=1..}] if score @s pos.y = @s prophunt.pos.y.last at @s rotated ~ 0 run tp @s ^ ^ ^-0.15
execute as @a[scores={prophunt.climb=1..}] run scoreboard players operation @s prophunt.pos.y.last = @s pos.y

# Visual effect
execute as @a[scores={prophunt.climb=1..}] at @s positioned ^ ^ ^0.2 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 1 normal

# Audio effect
execute as @a[scores={prophunt.climb=1..}] run scoreboard players operation @s data = @s prophunt.climb
scoreboard players operation @a[scores={prophunt.climb=1..}] data %= 3 const
execute at @a[scores={prophunt.climb=1..,data=0}] run playsound minecraft:block.wool.step master @a[distance=..5] ~ ~ ~ 0.2 2 0

# Update timer
scoreboard players add @s prophunt.climb 1

# Stop conditions -------------------------------------------------------------

# Stop climb if the player don't face climbable blocks
execute rotated ~ 0 positioned ^ ^ ^0.7 unless predicate prophunt:can_climb run function prophunt:climb/stop

# # Stop climb if there is a block above the player
execute rotated ~ 0 positioned ^ ^ ^-0.2 positioned ~ ~2 ~ unless block ~ ~ ~ #prophunt:cant_climb_on run function prophunt:climb/stop
execute rotated ~ 0 positioned ^ ^ ^-0.2 positioned ~ ~2 ~ unless block ~ ~ ~ #prophunt:cant_climb_on run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Stop climb if the player touch the ground
execute if entity @s[nbt={OnGround:1b}] rotated ~ 0 positioned ^ ^ ^-0.2 positioned ~ ~-0.001 ~ unless block ~ ~ ~ #prophunt:cant_climb_on run function prophunt:climb/stop

# Stop climb if the player climbed for too long
execute if score @s prophunt.climb matches 20.. run function prophunt:climb/stop
