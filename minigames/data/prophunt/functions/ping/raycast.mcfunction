# Executed as and at the pinging player
# tellraw @a {"text":"prophunt:ping/raycast"}

scoreboard players remove #prophunt.ping.raycast ctx 1
execute if score #prophunt.ping.raycast ctx matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function prophunt:ping/raycast
execute unless block ~ ~ ~ air align xyz positioned ~ ~0.5 ~ run function prophunt:ping/effect
execute if score #prophunt.ping.raycast ctx matches ..0 align xyz positioned ~ ~0.5 ~ run function prophunt:ping/effect