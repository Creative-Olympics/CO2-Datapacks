execute as @e[tag=wallstreet.villager_marker] at @s run function wallstreet:villager/clear/one with entity @s data.wallstreet

scoreboard players set #wallstreet.villager_count data 0
