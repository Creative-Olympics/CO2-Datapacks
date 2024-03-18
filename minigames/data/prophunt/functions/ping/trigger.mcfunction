# Executed globally
# tellraw @a {"text":"prophunt:ping/trigger"}

scoreboard players set #prophunt.ping.raycast ctx 0
execute as @a[tag=prophunt.is_hunter,scores={prophunt.use_item_trigger=1..,ping_stack=1..}] run scoreboard players add #prophunt.ping.raycast ctx 50
execute as @a[tag=prophunt.is_hunter,scores={prophunt.use_item_trigger=1..,ping_stack=1..}] at @s anchored eyes positioned ^ ^ ^ run function prophunt:ping/raycast

execute as @a[tag=prophunt.is_hunter,scores={prophunt.use_item_trigger=1..,ping_stack=1..}]

scoreboard players set @a[tag=prophunt.is_hunter] prophunt.use_item_trigger 0

scoreboard players remove @a[team=prophunt,scores={prophunt.ping_cooldown=1..}] prophunt.ping_cooldown 1
scoreboard players set @a[team=prophunt,scores={prophunt.ping_cooldown=..0,prophunt.ping_stack=..2}] prophunt.ping_cooldown 100