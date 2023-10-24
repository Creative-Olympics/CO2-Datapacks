# Executed globally
# tellraw @a {"text":"global:triggers/join"}

# Detect player connection
# 0 -> first join
# 1 -> Was already in game
# 2 -> Reconnection
execute as @a[scores={global.join_trigger=2..}] at @s run function #minecraft:join
# If the score is defined, it will be set to 1. Otherwise, it will be set to 0 (first join)
execute as @a store success score @s global.join_trigger run scoreboard players get @s global.join_trigger
execute as @a[scores={global.join_trigger=0}] at @s run function global:join/first_join


