# Executed globally
# tellraw @a {"text":"global:triggers/join"}

# Detect player connection
# 0 -> first join
# 1 -> Was already in game
# 2 -> Reconnection
execute as @a[scores={join=2..}] at @s run function global:events/join
# If the score is defined, it will be set to 1. Otherwise, it will be set to 0 (first join)
execute as @a store success score @s join run scoreboard players get @s join
execute as @a[scores={join=0}] at @s run function global:events/first_join