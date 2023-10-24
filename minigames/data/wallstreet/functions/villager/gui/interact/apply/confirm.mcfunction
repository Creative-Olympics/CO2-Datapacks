
particle dust 0 0.839 0.322 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal
execute as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/transaction/confirm
execute as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/talk/stop
