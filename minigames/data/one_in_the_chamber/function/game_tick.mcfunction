execute as @a[team=oitc] at @s if block ~ ~ ~ air if block ~ ~1 ~ air run spawnpoint @s ~ ~ ~ ~
execute as @a[team=oitc,scores={oitc.respawn_timer=0..}] at @s run function one_in_the_chamber:death/animation
