# Executed as and at the interacted entity

execute as @e[tag=wallstreet.sit,limit=1,sort=nearest] on passengers at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0

execute if entity @s[tag=wallstreet.villager.gui.interaction.next_resource] run \
    scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_resource 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.next_resource] run \
    scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0
execute if entity @s[tag=wallstreet.villager.gui.interaction.previous_resource] run \
    scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_resource 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.previous_resource] run \
    scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0

execute if entity @s[tag=wallstreet.villager.gui.interaction.buy] run \
    tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] remove wallstreet.villager.sell
execute if entity @s[tag=wallstreet.villager.gui.interaction.sell] run \
    tag @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] add wallstreet.villager.sell

execute if entity @s[tag=wallstreet.villager.gui.interaction.+1] run \
    scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.+10] run \
    scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 10
execute if entity @s[tag=wallstreet.villager.gui.interaction.+100] run \
    scoreboard players add @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 100

execute if entity @s[tag=wallstreet.villager.gui.interaction.-1] run \
    scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 1
execute if entity @s[tag=wallstreet.villager.gui.interaction.-10] run \
    scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 10
execute if entity @s[tag=wallstreet.villager.gui.interaction.-100] run \
    scoreboard players remove @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 100

execute if entity @s[tag=wallstreet.villager.gui.interaction.0] run \
    scoreboard players set @e[tag=wallstreet.villager_marker,limit=1,sort=nearest] wallstreet.selected_quantity 0

execute if entity @s[tag=wallstreet.villager.gui.interaction.max] run function wallstreet:villager/gui/interact/apply/max
execute if entity @s[tag=wallstreet.villager.gui.interaction.confirm] run function wallstreet:villager/gui/interact/apply/confirm
execute if entity @s[tag=wallstreet.villager.gui.interaction.leave] run function wallstreet:villager/gui/interact/apply/leave

execute if entity @s[tag=!wallstreet.villager.gui.interaction.leave,tag=!wallstreet.villager.gui.interaction.confirm] run particle dust 0.196 0.588 0.980 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal


