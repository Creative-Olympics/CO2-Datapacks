
# Villagers should always look at the nearest player when not talking to a client
execute as @e[tag=wallstreet.villager,tag=!wallstreet.villager.talking] at @s anchored eyes facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~

function wallstreet:villager/talk/
# execute as @e[tag=wallstreet.villager] at @s run function wallstreet:villager/force_position