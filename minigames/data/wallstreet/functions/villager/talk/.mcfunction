# Executed globally

# Identify the client
tag @e[tag=wallstreet.villager.client] remove wallstreet.villager.client
execute as @e[tag=wallstreet.sit,limit=1,sort=nearest] on passengers run tag @s add wallstreet.villager.client

# Enter GUI animation
execute as @e[tag=wallstreet.sit,scores={living_time=..10}] at @s run function wallstreet:villager/talk/animation

# Force villager to look at the client
execute as @e[tag=wallstreet.villager.talking] at @s anchored eyes facing entity @p[tag=wallstreet.villager.client] eyes run tp @s ~ ~ ~ ~ ~

# Exit GUI if the player leave the chair
execute at @e[tag=wallstreet.sit] unless entity @a[tag=wallstreet.villager.client,distance=..2] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] at @s run function wallstreet:villager/talk/stop
# Exit GUI if he run out of time
execute at @e[tag=wallstreet.sit,scores={living_time=620..}] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] at @s run function wallstreet:villager/talk/stop

# GUI tick
function wallstreet:villager/gui/

