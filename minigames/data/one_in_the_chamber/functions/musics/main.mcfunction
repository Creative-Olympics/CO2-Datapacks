
scoreboard players add #oitc.musics.timer data 1

# Start
execute if score #oitc.musics.timer data matches 1 run stopsound @a[team=oitc] music
execute if score #oitc.musics.timer data matches 1 as @a[team=oitc] at @s run playsound one_in_the_chamber:theme-1 record @s ~ ~ ~ 0.5 1 0

# After 1m 40s
execute if score #oitc.musics.timer data matches 2040 run stopsound @a[team=oitc] music
execute if score #oitc.musics.timer data matches 2040 as @a[team=oitc] at @s run playsound one_in_the_chamber:theme-2 record @s ~ ~ ~ 0.5 1 0

# Loop 57s after previous sound
execute if score #oitc.musics.timer data matches 3180 run scoreboard players set #oitc.musics.timer data 0