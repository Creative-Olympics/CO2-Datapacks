
particle dust 0 0.839 0.322 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal
execute as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/transaction/confirm

execute store result entity @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] data.wallstreet.set_lock.user int 1 run scoreboard players get @p SUID
execute as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] run function wallstreet:villager/lock/set with entity @s data.wallstreet.set_lock
execute as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/talk/stop
