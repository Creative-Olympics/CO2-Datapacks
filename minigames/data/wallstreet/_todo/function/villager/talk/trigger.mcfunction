execute store result entity @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] data.wallstreet.get_lock.user int 1 run scoreboard players get @p SUID
execute as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] run function wallstreet:villager/lock/get with entity @s data.wallstreet.get_lock

# Check if the player is locked
function wallstreet:villager/lock/check
execute if entity @s[tag=!wallstreet.villager.locked] run function wallstreet:villager/talk/start

# Revoking advancement
advancement revoke @s only wallstreet:villager_talk