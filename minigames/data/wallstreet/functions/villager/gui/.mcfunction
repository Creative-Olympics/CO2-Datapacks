execute as @e[tag=wallstreet.sit,scores={living_time=20}] at @s as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/gui/build

execute as @e[tag=wallstreet.villager_marker.talking] at @s run function wallstreet:villager/gui/refresh/

execute as @e[type=interaction,tag=wallstreet.villager.gui,nbt={interaction:{}}] at @s run function wallstreet:villager/gui/interact

execute as @e[tag=wallstreet.villager.gui.deal] at @s run tp @s ^ ^0.01 ^-0.001
execute as @e[tag=wallstreet.villager.gui.benefits] at @s run tp @s ^ ^0.01 ^-0.001
execute as @e[tag=wallstreet.villager.gui.give] at @s run tp @s ^ ^ ^-0.05
execute as @e[tag=wallstreet.villager.gui.get] at @s run tp @s ^ ^ ^0.05
kill @e[tag=wallstreet.villager.gui.deal,scores={living_time=20..}]
kill @e[tag=wallstreet.villager.gui.benefits,scores={living_time=60..}]
kill @e[tag=wallstreet.villager.gui.give,scores={living_time=20..}]
kill @e[tag=wallstreet.villager.gui.get,scores={living_time=20..}]