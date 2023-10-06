
scoreboard players set #wallstreet.model.starting_money data 5000
scoreboard players set #wallstreet.model.buy_power data 500

scoreboard players set #wallstreet.model.wood_global_stock data 1500
scoreboard players set #wallstreet.model.stone_global_stock data 1000
scoreboard players set #wallstreet.model.leather_global_stock data 525
scoreboard players set #wallstreet.model.iron_global_stock data 250
scoreboard players set #wallstreet.model.diamond_global_stock data 50

scoreboard players operation #wallstreet.model.global_stock data = #wallstreet.model.wood_global_stock data
scoreboard players operation #wallstreet.model.global_stock data += #wallstreet.model.stone_global_stock data
scoreboard players operation #wallstreet.model.global_stock data += #wallstreet.model.leather_global_stock data
scoreboard players operation #wallstreet.model.global_stock data += #wallstreet.model.iron_global_stock data
scoreboard players operation #wallstreet.model.global_stock data += #wallstreet.model.diamond_global_stock data