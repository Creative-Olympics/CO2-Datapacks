# Detect item in offhand
execute as @a[team=prophunt,tag=prophunt.is_hunter,predicate=prophunt:swap_hand] at @s run function prophunt:hunter/abilities/ultimate/try_start

execute as @a[team=prophunt,tag=prophunt.is_hunter,predicate=prophunt:unlock_ultimate] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players add @a[team=prophunt,tag=prophunt.is_hunter] prophunt.hunter_ultimate_points 1

execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_ultimate_timer=1..}] at @s run function prophunt:hunter/abilities/ultimate/process
