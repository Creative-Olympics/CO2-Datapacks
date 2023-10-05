
tag @s add wallstreet.clear
execute at @s run tag @e[tag=wallstreet.villager,distance=..2] add wallstreet.clear

$execute positioned $(sign_x) $(sign_y) $(sign_z) run setblock ~ ~ ~ minecraft:air
$execute positioned $(chair_x) $(chair_y) $(chair_z) run setblock ~ ~ ~ minecraft:air
$execute positioned $(chair_x) $(chair_y) $(chair_z) run setblock ~ ~1 ~ minecraft:air