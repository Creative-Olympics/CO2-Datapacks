scoreboard players operation #lock_time tmp = #wallstreet.timer data

execute store result entity @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] data.wallstreet.get_lock.user int 1 run scoreboard players get @p SUID
execute as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] run function wallstreet:villager/lock/get with entity @s data.wallstreet.get_lock

scoreboard players operation #lock_time tmp -= #lock_date tmp

execute unless score #lock_time tmp matches -300..0 run function wallstreet:villager/talk/start
execute if score #lock_time tmp matches -300..0 run function wallstreet:villager/lock/message

# Revoking advancement
advancement revoke @s only wallstreet:villager/talk