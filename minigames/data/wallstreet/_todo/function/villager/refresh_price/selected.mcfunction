
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #current_stock input = @s wallstreet.wood_current_stock
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #max_stock input = @s wallstreet.wood_max_stock
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #price_index input = #wallstreet.model.wood.price_index data

execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #current_stock input = @s wallstreet.stone_current_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #max_stock input = @s wallstreet.stone_max_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #price_index input = #wallstreet.model.stone.price_index data

execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #current_stock input = @s wallstreet.leather_current_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #max_stock input = @s wallstreet.leather_max_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #price_index input = #wallstreet.model.leather.price_index data

execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #current_stock input = @s wallstreet.iron_current_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #max_stock input = @s wallstreet.iron_max_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #price_index input = #wallstreet.model.iron.price_index data

execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #current_stock input = @s wallstreet.diamond_current_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #max_stock input = @s wallstreet.diamond_max_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #price_index input = #wallstreet.model.diamond.price_index data

function wallstreet:economy_model/get_price

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation @s wallstreet.wood_price = #price output
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation @s wallstreet.stone_price = #price output
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation @s wallstreet.leather_price = #price output
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation @s wallstreet.iron_price = #price output
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation @s wallstreet.diamond_price = #price output

scoreboard players operation #wood_price data = @s wallstreet.wood_price
scoreboard players operation #stone_price data = @s wallstreet.stone_price
scoreboard players operation #leather_price data = @s wallstreet.leather_price
scoreboard players operation #iron_price data = @s wallstreet.iron_price
scoreboard players operation #diamond_price data = @s wallstreet.diamond_price

function wallstreet:villager/refresh_price/update_sign with entity @s data.wallstreet
