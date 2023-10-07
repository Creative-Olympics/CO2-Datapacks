
# Confirm
execute as @p[tag=wallstreet.villager.client] if predicate wallstreet:villager/gui/hover/confirm run data modify entity @e[tag=wallstreet.villager.gui.display.confirm,sort=nearest,limit=1] text set value '[{"text":"✔","color":"green","bold":true,"italic":false}]'
execute as @p[tag=wallstreet.villager.client] unless predicate wallstreet:villager/gui/hover/confirm run data modify entity @e[tag=wallstreet.villager.gui.display.confirm,sort=nearest,limit=1] text set value '[{"text":"✔","color":"green","bold":false,"italic":false}]'

# Leave
execute as @p[tag=wallstreet.villager.client] if predicate wallstreet:villager/gui/hover/leave run data modify entity @e[tag=wallstreet.villager.gui.display.leave,sort=nearest,limit=1] text set value '[{"text":"❌","color":"red","bold":true,"italic":false}]'
execute as @p[tag=wallstreet.villager.client] unless predicate wallstreet:villager/gui/hover/leave run data modify entity @e[tag=wallstreet.villager.gui.display.leave,sort=nearest,limit=1] text set value '[{"text":"❌","color":"red","bold":false,"italic":false}]'
