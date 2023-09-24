# Executed globally

execute as @a[team=jump,scores={jump.time_left=1}] at @s run function jump:stop/timesup
execute as @a[team=jump] if score @s jump.step > $jump.checkpoint_count data at @s run function jump:stop/complete