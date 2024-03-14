# Executed globally
# tellraw @a {"text":"prophunt:ping/trigger"}

scoreboard players set #prophunt.ping.raycast ctx 0
execute as @a[tag=prophunt.is_hunter,scores={prophunt.use_item_trigger=1..}] run scoreboard players add #prophunt.ping.raycast ctx 50
execute as @a[tag=prophunt.is_hunter,scores={prophunt.use_item_trigger=1..}] at @s anchored eyes positioned ^ ^ ^ run function prophunt:ping/raycast
scoreboard players set @a[tag=prophunt.is_hunter] prophunt.use_item_trigger 0