tag @s add oitc.camera
data modify entity @s teleport_duration set value 4
scoreboard players operation @s bs.id = $id.suid bs.in
execute positioned ~ ~1.7 ~ rotated ~ 10 run tp @s ^ ^ ^-2 ~ ~
