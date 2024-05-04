# Executed as & at the villager marker

execute store result entity @s data.wallstreet.set_lock.user int 1 run scoreboard players get @p[tag=wallstreet.villager.client] SUID
function wallstreet:villager/lock/set with entity @s data.wallstreet.set_lock

tag @p[tag=wallstreet.villager.client] remove wallstreet.villager.client

playsound minecraft:entity.villager.no master @a[distance=..10] ~ ~ ~ 1 1 0
function lib:id/get_child
kill @e[tag=wallstreet.villager.gui,distance=..3.5]
kill @e[tag=wallstreet.villager.protection,distance=..3.5]
data modify entity @e[tag=lib.id.child,limit=1,sort=nearest] CustomNameVisible set value 1b
tag @s remove wallstreet.villager_marker.talking
tag @e[tag=lib.id.child] remove wallstreet.villager.talking
execute as @e[tag=wallstreet.sit,distance=..3.5] at @s run kill @s