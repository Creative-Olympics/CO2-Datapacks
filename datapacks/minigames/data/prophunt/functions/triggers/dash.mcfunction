# Executed globally
# tellraw @a {"text":"prophunt:triggers/dash"}

execute as @a[tag=prophunt.is_hunter,scores={prophunt.dash_trigger=1..}] at @s run function prophunt:events/dash/start
execute as @a[tag=prophunt.is_hunter,scores={prophunt.dash_timer=1..}] at @s run function prophunt:events/dash/animation
execute as @a[tag=prophunt.is_hunter,scores={prophunt.dash_timer=10..}] at @s run function prophunt:events/dash/stop