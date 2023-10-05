# Executed as & at the villager marker

playsound minecraft:entity.villager.no master @a[distance=..10] ~ ~ ~ 1 1 0

function lib:id/get_child
kill @e[tag=wallstreet.villager.gui,distance=..5]
data modify entity @e[tag=lib.id.child,limit=1,sort=nearest] CustomNameVisible set value 1b
tag @s remove wallstreet.villager_marker.talking
tag @e[tag=lib.id.child] remove wallstreet.villager.talking
execute as @e[tag=wallstreet.sit,distance=..5] at @s run kill @s