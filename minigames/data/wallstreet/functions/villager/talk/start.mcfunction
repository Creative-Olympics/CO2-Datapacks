# Executed as and at the interacting player

# Confirmation sound and particles
playsound ui.button.click master @s ~ ~ ~ 1 1
# particle minecraft:cloud ~ ~ ~ 0 0 0 1 100 force

# Identifiying interacted villager
tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] add wallstreet.interacted_villager
tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] add wallstreet.villager_marker.talking
tag @e[tag=wallstreet.villager,limit=1,sort=nearest] add wallstreet.villager.talking
data modify entity @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] CustomNameVisible set value 0b
execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s run summon interaction ~ ~ ~ {width:1f,height:2f,Tags:["wallstreet.villager.protection"]}

scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0
scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_resource 0
tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] remove wallstreet.villager.sell

# Summoning chair 
summon armor_stand ~ ~0.7 ~ {Invisible:1,Small:1,Marker:1,NoGravity:1,Tags:["wallstreet.entity","wallstreet.sit","wallstreet.sit.new"]}
ride @s mount @e[tag=wallstreet.sit.new,limit=1,sort=nearest]

# Getting chair position according to the interacted villager
execute as @e[tag=wallstreet.sit.new] store result score @s vel.x run data get entity @e[tag=wallstreet.interacted_villager,limit=1,sort=nearest] data.wallstreet.chair_x 1000
execute as @e[tag=wallstreet.sit.new] store result score @s vel.y run data get entity @e[tag=wallstreet.interacted_villager,limit=1,sort=nearest] data.wallstreet.chair_y 1000
execute as @e[tag=wallstreet.sit.new] store result score @s vel.z run data get entity @e[tag=wallstreet.interacted_villager,limit=1,sort=nearest] data.wallstreet.chair_z 1000

execute as @e[tag=wallstreet.sit.new] run scoreboard players add @s vel.x 500
execute as @e[tag=wallstreet.sit.new] run scoreboard players add @s vel.y 1000
execute as @e[tag=wallstreet.sit.new] run scoreboard players add @s vel.z 500

# Computing player to chair vector
execute as @e[tag=wallstreet.sit.new] store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=wallstreet.sit.new] store result score @s pos.y run data get entity @s Pos[1] 1000
execute as @e[tag=wallstreet.sit.new] store result score @s pos.z run data get entity @s Pos[2] 1000

execute as @e[tag=wallstreet.sit.new] run scoreboard players operation @s vel.x -= @s pos.x
execute as @e[tag=wallstreet.sit.new] run scoreboard players operation @s vel.y -= @s pos.y
execute as @e[tag=wallstreet.sit.new] run scoreboard players operation @s vel.z -= @s pos.z

scoreboard players set 10 const 10
execute as @e[tag=wallstreet.sit.new] run scoreboard players operation @s vel.x /= 10 const
execute as @e[tag=wallstreet.sit.new] run scoreboard players operation @s vel.y /= 10 const
execute as @e[tag=wallstreet.sit.new] run scoreboard players operation @s vel.z /= 10 const

# Removing identification tag
tag @e[tag=wallstreet.interacted_villager] remove wallstreet.interacted_villager

tag @e[tag=wallstreet.sit.new] remove wallstreet.sit.new
