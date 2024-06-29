# Update timer
scoreboard players add @s prophunt.climb 1

# Visual effect
execute positioned ^ ^ ^0.2 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 1 normal

# Audio effect
scoreboard players operation #prophunt.climb data = @s prophunt.climb
scoreboard players operation #prophunt.climb data %= 3 const
execute if score #prophunt.climb data matches 0 run playsound minecraft:block.wool.step master @a[distance=..5] ~ ~ ~ 0.2 2 0

# Stop conditions -------------------------------------------------------------

# Stop climb if the player climbed for too long
execute if score @s prophunt.climb matches 20.. run return run function prophunt:climb/stop
# Stop climb if there is a block above the player
execute rotated ~ 0 unless block ^ ^2 ^-0.2 #prophunt:can_walk_through run function prophunt:climb/stop
# Stop climb if the player touch the ground
execute if predicate prophunt:is_on_ground rotated ~ 0 unless block ^ ^-0.001 ^-0.2 #prophunt:can_walk_through run return run function prophunt:climb/stop
# Stop climb if the player don't face climbable blocks
execute rotated ~ 0 positioned ^ ^ ^0.7 unless predicate prophunt:can_climb run return run function prophunt:climb/stop

# Anti blocking system (bring back the player if there is a small obstacle)
execute store result score #result data run data get entity @s Pos[1] 1000
execute if score @s prophunt.climb.y = #result data rotated ~ 0 run tp @s ^ ^ ^-0.15
scoreboard players operation @s prophunt.climb.y = #result data
