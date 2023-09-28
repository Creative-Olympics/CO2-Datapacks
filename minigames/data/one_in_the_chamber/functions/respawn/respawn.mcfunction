# Executed as & at player
# tellraw @a [{"text":"oitc:events/respawn on "},{"selector":"@s"}]

# Remove camera
kill @e[tag=oitc_death_camera,sort=nearest,limit=1]

# Set gamemode
gamemode adventure

clear @s
loot give @s loot one_in_the_chamber:bow
loot give @s loot one_in_the_chamber:sword
loot give @s loot one_in_the_chamber:arrow

execute store result score @s tmp run random value 0..14

execute if score @s tmp matches 0 run tp @s -187 97 -110 45 0
execute if score @s tmp matches 1 run tp @s -205 97 -113 -45 0
execute if score @s tmp matches 2 run tp @s -205 102 -113 -45 0
execute if score @s tmp matches 3 run tp @s -176 97 -113 -45 0
execute if score @s tmp matches 4 run tp @s -176 100 -113 -45 0
execute if score @s tmp matches 5 run tp @s -178 100 -75 0 0
execute if score @s tmp matches 6 run tp @s -189 100 -75 0 0
execute if score @s tmp matches 7 run tp @s -178 100 -58 180 0
execute if score @s tmp matches 8 run tp @s -189 100 -58 180 0
execute if score @s tmp matches 9 run tp @s -190 104 -67 -90 0
execute if score @s tmp matches 10 run tp @s -177 104 -67 90 0
execute if score @s tmp matches 11 run tp @s -196 97 -75 90 0
execute if score @s tmp matches 12 run tp @s -211 97 -70 -135 0
execute if score @s tmp matches 13 run tp @s -166 97 -90 0 0
execute if score @s tmp matches 14 run tp @s -164 97 -76 180 0