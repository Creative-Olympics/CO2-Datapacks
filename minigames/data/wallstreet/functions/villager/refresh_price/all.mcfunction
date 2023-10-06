scoreboard players operation #wallstreet.get_price.quantity data = @s wallstreet.wood_quantity
scoreboard players operation #wallstreet.get_price.global_quantity data = #wallstreet.model.wood_global_stock data
scoreboard players operation #wallstreet.get_price.global_price data = #wallstreet.model.wood_global_price data
function wallstreet:economy_model/get_price
scoreboard players operation @s wallstreet.wood_price = #wallstreet.get_price.price data

scoreboard players operation #wallstreet.get_price.quantity data = @s wallstreet.stone_quantity
scoreboard players operation #wallstreet.get_price.global_quantity data = #wallstreet.model.stone_global_stock data
scoreboard players operation #wallstreet.get_price.global_price data = #wallstreet.model.stone_global_price data
function wallstreet:economy_model/get_price
scoreboard players operation @s wallstreet.stone_price = #wallstreet.get_price.price data

scoreboard players operation #wallstreet.get_price.quantity data = @s wallstreet.leather_quantity
scoreboard players operation #wallstreet.get_price.global_quantity data = #wallstreet.model.leather_global_stock data
scoreboard players operation #wallstreet.get_price.global_price data = #wallstreet.model.leather_global_price data
function wallstreet:economy_model/get_price
scoreboard players operation @s wallstreet.leather_price = #wallstreet.get_price.price data

scoreboard players operation #wallstreet.get_price.quantity data = @s wallstreet.iron_quantity
scoreboard players operation #wallstreet.get_price.global_quantity data = #wallstreet.model.iron_global_stock data
scoreboard players operation #wallstreet.get_price.global_price data = #wallstreet.model.iron_global_price data
function wallstreet:economy_model/get_price
scoreboard players operation @s wallstreet.iron_price = #wallstreet.get_price.price data

scoreboard players operation #wallstreet.get_price.quantity data = @s wallstreet.diamond_quantity
scoreboard players operation #wallstreet.get_price.global_quantity data = #wallstreet.model.diamond_global_stock data
scoreboard players operation #wallstreet.get_price.global_price data = #wallstreet.model.diamond_global_price data
function wallstreet:economy_model/get_price
scoreboard players operation @s wallstreet.diamond_price = #wallstreet.get_price.price data

scoreboard players operation #wood_price data = @s wallstreet.wood_price
scoreboard players operation #stone_price data = @s wallstreet.stone_price
scoreboard players operation #leather_price data = @s wallstreet.leather_price
scoreboard players operation #iron_price data = @s wallstreet.iron_price
scoreboard players operation #diamond_price data = @s wallstreet.diamond_price

function wallstreet:villager/refresh_price/update_sign with entity @s data.wallstreet