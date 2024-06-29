
function wallstreet:villager/utils/get_client_next_balance

# Confirm
execute as @p[tag=wallstreet.villager.client] if predicate wallstreet:villager/gui/hover/confirm run data modify entity @e[tag=wallstreet.villager.gui.display.confirm,sort=nearest,limit=1] text set value '[{"text":"✔","color":"green","bold":true,"italic":false}]'
execute as @p[tag=wallstreet.villager.client] unless predicate wallstreet:villager/gui/hover/confirm run data modify entity @e[tag=wallstreet.villager.gui.display.confirm,sort=nearest,limit=1] text set value '[{"text":"✔","color":"green","bold":false,"italic":false}]'
execute if score @s wallstreet.selected_quantity matches 0 run data modify entity @e[tag=wallstreet.villager.gui.display.confirm,sort=nearest,limit=1] text set value '[{"text":"✔","color":"gray","bold":false,"italic":false}]'
execute if score #next_balance ctx matches ..-1 run data modify entity @e[tag=wallstreet.villager.gui.display.confirm,sort=nearest,limit=1] text set value '[{"text":"✔","color":"gray","bold":false,"italic":false}]'


# Leave
execute as @p[tag=wallstreet.villager.client] if predicate wallstreet:villager/gui/hover/leave run data modify entity @e[tag=wallstreet.villager.gui.display.leave,sort=nearest,limit=1] text set value '[{"text":"❌","color":"red","bold":true,"italic":false}]'
execute as @p[tag=wallstreet.villager.client] unless predicate wallstreet:villager/gui/hover/leave run data modify entity @e[tag=wallstreet.villager.gui.display.leave,sort=nearest,limit=1] text set value '[{"text":"❌","color":"red","bold":false,"italic":false}]'
