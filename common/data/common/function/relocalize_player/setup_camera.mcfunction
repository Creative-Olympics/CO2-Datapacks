tag @s add common.relocalize_player
data modify entity @s teleport_duration set value 4
execute at @s run tp @s ~ ~ ~ 0 90
scoreboard players operation @s bs.id = $id.suid bs.in
function common:relocalize_player/get_velocity/ascending
