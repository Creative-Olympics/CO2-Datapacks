
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #quantity tmp = @s wallstreet.wood_quantity
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #quantity tmp = @s wallstreet.stone_quantity
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #quantity tmp = @s wallstreet.leather_quantity
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #quantity tmp = @s wallstreet.iron_quantity
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #quantity tmp = @s wallstreet.diamond_quantity

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #price tmp = @s wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #price tmp = @s wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #price tmp = @s wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #price tmp = @s wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #price tmp = @s wallstreet.diamond_price

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#quantity","objective":"tmp"},"color":"red","bold":true,"italic":true},{"text":" items\\n","color":"gray","bold":false,"italic":false},{"score":{"name":"#price","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]'

execute \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#quantity","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":" items\\n","color":"gray","bold":false,"italic":false},{"score":{"name":"#price","objective":"tmp"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]'

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#quantity","objective":"tmp"},"color":"red","bold":true,"italic":true},{"text":" items\\n","color":"gray","bold":false,"italic":false},{"score":{"name":"#price","objective":"tmp"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]'

execute \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#quantity","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":" items\\n","color":"gray","bold":false,"italic":false},{"score":{"name":"#price","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]'
