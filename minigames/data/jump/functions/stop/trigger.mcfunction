execute as @a[team=jump,scores={jump.time_left=..1}] at @s run function jump:stop/timesup
execute as @a[team=jump,predicate=jump:check_complete] at @s run function jump:stop/complete
