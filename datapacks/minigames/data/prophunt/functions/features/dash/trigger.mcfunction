# Executed globally
# tellraw @a {"text":"prophunt:features/dash/trigger"}

execute as @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1}] at @s run function prophunt:features/dash/start
execute as @e[tag=prophunt.dash] at @s run function prophunt:features/dash/animation
execute as @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=10..}] at @s run function prophunt:features/dash/stop
scoreboard players add @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1..}] prophunt.drop_trigger 1

