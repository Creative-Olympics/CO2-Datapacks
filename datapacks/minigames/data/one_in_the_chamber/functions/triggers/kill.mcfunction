# Executed globally
# tellraw @a {"text":"oitc:triggers/kill"}

# execute as @a run tellraw @s [{"score":{"name":"@s","objective":"oitc_kills"}},{"text":"   "},{"score":{"name":"@s","objective":"oitc_kills_memory"}}]

# Compare current kill count with previous one
execute as @a[team=oitc] run scoreboard players operation @s oitc_kills_memory -= @s oitc_kills

# Run kill event if kill count has increased
execute as @a[team=oitc,scores={oitc_kills_memory=-1}] at @s run function one_in_the_chamber:events/kill

# Reset kill count memory for the next tick
execute as @a[team=oitc] run scoreboard players operation @s oitc_kills_memory = @s oitc_kills