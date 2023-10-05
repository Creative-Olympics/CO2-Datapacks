# Executed as and at the interacted entity

execute as @e[tag=wallstreet.sit,limit=1,sort=nearest] on passengers at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0

execute if entity @s[tag=wallstreet.villager.gui.interaction.next_resource] run scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_resource 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.next_resource] run scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0
execute if entity @s[tag=wallstreet.villager.gui.interaction.previous_resource] run scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_resource 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.previous_resource] run scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0

execute if entity @s[tag=wallstreet.villager.gui.interaction.buy] run tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] remove wallstreet.villager.sell
execute if entity @s[tag=wallstreet.villager.gui.interaction.sell] run tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] add wallstreet.villager.sell

execute if entity @s[tag=wallstreet.villager.gui.interaction.+1] run scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.+10] run scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 10
execute if entity @s[tag=wallstreet.villager.gui.interaction.+100] run scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 100

execute if entity @s[tag=wallstreet.villager.gui.interaction.-1] run scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.-10] run scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 10
execute if entity @s[tag=wallstreet.villager.gui.interaction.-100] run scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 100

execute if entity @s[tag=wallstreet.villager.gui.interaction.0] run scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0

# Select max in buy mode
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] unless entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 0 run scoreboard players operation @s wallstreet.selected_quantity = @s wallstreet.wood_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] unless entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 1 run scoreboard players operation @s wallstreet.selected_quantity = @s wallstreet.stone_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] unless entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 2 run scoreboard players operation @s wallstreet.selected_quantity = @s wallstreet.leather_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] unless entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 3 run scoreboard players operation @s wallstreet.selected_quantity = @s wallstreet.iron_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] unless entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 4 run scoreboard players operation @s wallstreet.selected_quantity = @s wallstreet.diamond_quantity

# Select max in sell mode
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] if entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 0 run scoreboard players operation @s wallstreet.selected_quantity = @p[tag=wallstreet.villager.client] wallstreet.wood_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] if entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 1 run scoreboard players operation @s wallstreet.selected_quantity = @p[tag=wallstreet.villager.client] wallstreet.stone_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] if entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 2 run scoreboard players operation @s wallstreet.selected_quantity = @p[tag=wallstreet.villager.client] wallstreet.leather_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] if entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 3 run scoreboard players operation @s wallstreet.selected_quantity = @p[tag=wallstreet.villager.client] wallstreet.iron_quantity
execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] if entity @s[tag=wallstreet.villager.sell] if score @s wallstreet.selected_resource matches 4 run scoreboard players operation @s wallstreet.selected_quantity = @p[tag=wallstreet.villager.client] wallstreet.diamond_quantity

execute if entity @s[tag=wallstreet.villager.gui.interaction.max] as @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] run scoreboard players add @s wallstreet.selected_quantity 1

execute if entity @s[tag=wallstreet.villager.gui.interaction.leave] as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/talk/stop

execute if entity @s[tag=wallstreet.villager.gui.interaction.confirm] as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/transaction/confirm

execute if entity @s[tag=!wallstreet.villager.gui.interaction.leave,tag=!wallstreet.villager.gui.interaction.confirm] run particle dust 0.196 0.588 0.980 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal
execute if entity @s[tag=wallstreet.villager.gui.interaction.confirm] run particle dust 0 0.839 0.322 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal
execute if entity @s[tag=wallstreet.villager.gui.interaction.leave] run particle dust 0.98 0.196 0.196 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal

data remove entity @s interaction

