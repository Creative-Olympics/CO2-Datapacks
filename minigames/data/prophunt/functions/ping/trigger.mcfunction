# Executed globally
# tellraw @a {"text":"prophunt:ping/trigger"}

execute as @a[tag=prophunt.is_hunter,scores={prophunt.use_item_trigger=1..}] at @s run function prophunt:ping/run