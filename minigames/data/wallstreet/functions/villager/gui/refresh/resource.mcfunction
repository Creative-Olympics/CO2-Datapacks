# Executed as & at the villager marker

scoreboard players set @s[scores={wallstreet.selected_resource=5..}] wallstreet.selected_resource 0
scoreboard players set @s[scores={wallstreet.selected_resource=..-1}] wallstreet.selected_resource 4

# Selected resource
execute if score @s wallstreet.selected_resource matches 0 run data modify entity @e[tag=wallstreet.villager.gui.display.resource,sort=nearest,limit=1] text set value '[{"text":"","color":"white","bold":false,"italic":false,"underlined":false}]'
execute if score @s wallstreet.selected_resource matches 1 run data modify entity @e[tag=wallstreet.villager.gui.display.resource,sort=nearest,limit=1] text set value '[{"text":"","color":"white","bold":false,"italic":false,"underlined":false}]'
execute if score @s wallstreet.selected_resource matches 2 run data modify entity @e[tag=wallstreet.villager.gui.display.resource,sort=nearest,limit=1] text set value '[{"text":"","color":"white","bold":false,"italic":false,"underlined":false}]'
execute if score @s wallstreet.selected_resource matches 3 run data modify entity @e[tag=wallstreet.villager.gui.display.resource,sort=nearest,limit=1] text set value '[{"text":"","color":"white","bold":false,"italic":false,"underlined":false}]'
execute if score @s wallstreet.selected_resource matches 4 run data modify entity @e[tag=wallstreet.villager.gui.display.resource,sort=nearest,limit=1] text set value '[{"text":"","color":"white","bold":false,"italic":false,"underlined":false}]'

# Next resource button
execute as @p[tag=wallstreet.villager.client] if predicate wallstreet:villager/gui/hover/next_resource run \
    data modify entity @e[tag=wallstreet.villager.gui.display.next_resource,sort=nearest,limit=1] text set value '[{"text":"🠞","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'
execute as @p[tag=wallstreet.villager.client] unless predicate wallstreet:villager/gui/hover/next_resource run \
    data modify entity @e[tag=wallstreet.villager.gui.display.next_resource,sort=nearest,limit=1] text set value '[{"text":"🠞","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

# Previous resource button
execute as @p[tag=wallstreet.villager.client] if predicate wallstreet:villager/gui/hover/previous_resource run \
    data modify entity @e[tag=wallstreet.villager.gui.display.previous_resource,sort=nearest,limit=1] text set value '[{"text":"🠜","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'
execute as @p[tag=wallstreet.villager.client] unless predicate wallstreet:villager/gui/hover/previous_resource run \
    data modify entity @e[tag=wallstreet.villager.gui.display.previous_resource,sort=nearest,limit=1] text set value '[{"text":"🠜","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'
