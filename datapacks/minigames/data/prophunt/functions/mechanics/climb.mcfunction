# Executed globally
# tellraw @a {"text":"prophunt:mechanics/climb"}

# Start climb if player jump and face climbable blocks
execute as @a[scores={prophunt.jump_trigger=1..,prophunt.climb=0}] at @s rotated ~ 0 positioned ^ ^ ^0.7 if predicate prophunt:can_climb run scoreboard players set @s prophunt.climb 1
# Stop climb if the player don't face climbable blocks
execute as @a[scores={prophunt.climb=1..}] at @s rotated ~ 0 positioned ^ ^ ^0.7 unless predicate prophunt:can_climb run scoreboard players set @s prophunt.climb 0
# Stop climb if there is a block above the player
execute as @a[scores={prophunt.climb=1..}] at @s unless block ~ ~2 ~ #prophunt:cant_climb_on run scoreboard players set @s prophunt.climb 0

# Manage jump trigger
scoreboard players add @a[scores={prophunt.jump_trigger=1..}] prophunt.jump_trigger 1
scoreboard players set @a[scores={prophunt.jump_trigger=20..}] prophunt.jump_trigger 0
scoreboard players set @a[scores={prophunt.climb=1..}] prophunt.jump_trigger 0

# Manage climb timer
scoreboard players add @a[scores={prophunt.climb=1..}] prophunt.climb 1
scoreboard players set @a[scores={prophunt.climb=20..}] prophunt.climb 0
scoreboard players set @a[nbt={OnGround:1b}] prophunt.climb 0

# Is climbing
effect give @a[scores={prophunt.climb=1..}] minecraft:levitation 1 10 true
execute as @a[scores={prophunt.climb=1..}] at @s rotated ~ 0 if score @s pos.y = @s prophunt.pos.y.last run tp @s ^ ^ ^-0.1
execute as @a[scores={prophunt.climb=1..}] run scoreboard players operation @s prophunt.pos.y.last = @s pos.y
execute as @a[scores={prophunt.climb=1..}] at @s positioned ^ ^ ^0.2 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 1 normal
scoreboard players set 3 data 3
execute as @a[scores={prophunt.climb=1..}] run scoreboard players operation @s data = @s prophunt.climb
scoreboard players operation @a[scores={prophunt.climb=1..}] data %= 3 data
execute at @a[scores={prophunt.climb=1..,data=0}] run playsound minecraft:block.wool.step master @a[distance=..5] ~ ~ ~ 0.2 2 0

# Is not climbing
effect clear @a[scores={prophunt.climb=0}] minecraft:levitation

