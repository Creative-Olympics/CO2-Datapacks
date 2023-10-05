scoreboard players operation #next_balance tmp = @s wallstreet.selected_quantity

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #next_balance tmp *= @s wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #next_balance tmp *= @s wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #next_balance tmp *= @s wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #next_balance tmp *= @s wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #next_balance tmp *= @s wallstreet.diamond_price

execute if entity @s[tag=!wallstreet.villager.sell] run scoreboard players operation #next_balance tmp *= -1 const
scoreboard players operation #next_balance tmp += @p[tag=wallstreet.villager.client] wallstreet.budget

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.next_balance,sort=nearest,limit=1] text set value '[{"text":"Next balance: ","color":"white","bold":false,"italic":false},{"score":{"name":"#next_balance","objective":"tmp"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]'

execute \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.next_balance,sort=nearest,limit=1] text set value '[{"text":"Next balance: ","color":"white","bold":false,"italic":false},{"score":{"name":"#next_balance","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]'
