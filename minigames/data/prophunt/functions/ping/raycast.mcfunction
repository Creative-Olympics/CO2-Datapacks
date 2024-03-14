# Executed as and at the pinging player
tellraw @a {"text":"prophunt:ping/raycast"}

scoreboard players remove #prophunt.ping.raycast ctx 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute if score #prophunt.ping.raycast ctx matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function prophunt:ping/raycast
execute unless block ~ ~ ~ air align xyz positioned ~ ~0.5 ~ run function prophunt:ping/effect