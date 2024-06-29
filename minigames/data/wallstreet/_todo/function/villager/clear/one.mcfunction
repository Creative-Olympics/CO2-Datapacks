tag @s add wallstreet.clear
function wallstreet:villager/talk/stop
execute at @s run tag @e[tag=wallstreet.villager,distance=..2] add wallstreet.clear

$execute positioned $(sign_x) $(sign_y) $(sign_z) run setblock ~ ~ ~ minecraft:moving_piston
$execute positioned $(chair_x) $(chair_y) $(chair_z) run setblock ~ ~ ~ minecraft:moving_piston
$execute positioned $(chair_x) $(chair_y) $(chair_z) run setblock ~ ~1 ~ minecraft:moving_piston

execute as @e[tag=wallstreet.clear] at @s run tp @s ~ 0 ~
kill @e[tag=wallstreet.clear]

scoreboard players remove #wallstreet.villager_count data 1
