
scoreboard players operation #transaction_value ctx = #quantity ctx

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #transaction_value ctx *= @s wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #transaction_value ctx *= @s wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #transaction_value ctx *= @s wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #transaction_value ctx *= @s wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #transaction_value ctx *= @s wallstreet.diamond_price

data modify entity @e[tag=wallstreet.villager.gui.display.transaction_value,sort=nearest,limit=1] text set value '[{"score":{"name":"#transaction_value","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]'
