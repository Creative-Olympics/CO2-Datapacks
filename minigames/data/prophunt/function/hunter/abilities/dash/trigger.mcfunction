# If the hunter drop an item try to dash (ensure the ability is not in cooldown)
execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.drop=1..}] at @s run function prophunt:hunter/abilities/dash/try_start

execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_dash_cooldown=201..}] at @s run function prophunt:hunter/abilities/dash/process/run
execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_dash_cooldown=200}] at @s run function prophunt:hunter/abilities/dash/stop
execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_dash_cooldown=1}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players remove @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_dash_cooldown=1..}] prophunt.hunter_dash_cooldown 1
