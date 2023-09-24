# Executed globally

execute as @a[team=jump,scores={jump.time_left=1..}] at @s run function jump:timer/display
scoreboard players remove @a[team=jump,scores={jump.time_left=1..}] jump.time_left 1