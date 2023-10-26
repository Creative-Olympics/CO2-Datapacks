
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #quantity ctx = @s wallstreet.wood_current_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #quantity ctx = @s wallstreet.stone_current_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #quantity ctx = @s wallstreet.leather_current_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #quantity ctx = @s wallstreet.iron_current_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #quantity ctx = @s wallstreet.diamond_current_stock

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #max_stock ctx = @s wallstreet.wood_max_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #max_stock ctx = @s wallstreet.stone_max_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #max_stock ctx = @s wallstreet.leather_max_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #max_stock ctx = @s wallstreet.iron_max_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #max_stock ctx = @s wallstreet.diamond_max_stock

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #price ctx = @s wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #price ctx = @s wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #price ctx = @s wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #price ctx = @s wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #price ctx = @s wallstreet.diamond_price

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#quantity","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

execute \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#quantity","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#quantity","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

execute unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
        unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
    run data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#quantity","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

# Max stock
execute unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_max_stock] \
    run data modify entity @e[tag=wallstreet.villager.gui.display.villager_info.max_stock,sort=nearest,limit=1] text set value '[{"text":"Max stock: ","color":"white","bold":false},{"score":{"name":"#max_stock","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false}]'

execute if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_max_stock] \
    run data modify entity @e[tag=wallstreet.villager.gui.display.villager_info.max_stock,sort=nearest,limit=1] text set value '[{"text":"Max stock: ","color":"white","bold":false},{"score":{"name":"#max_stock","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false}]'