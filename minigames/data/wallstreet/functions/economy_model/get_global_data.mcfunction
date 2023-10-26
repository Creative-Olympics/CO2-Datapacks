scoreboard players operation #wallstreet.model.total_resource_stock data = #wallstreet.model.wood.global_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.stone.global_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.leather.global_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.iron.global_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.diamond.global_stock data

scoreboard players operation #wallstreet.model.wood.abundance_ratio(pcm) data = #wallstreet.model.wood.global_stock data
scoreboard players operation #wallstreet.model.stone.abundance_ratio(pcm) data = #wallstreet.model.stone.global_stock data
scoreboard players operation #wallstreet.model.leather.abundance_ratio(pcm) data = #wallstreet.model.leather.global_stock data
scoreboard players operation #wallstreet.model.iron.abundance_ratio(pcm) data = #wallstreet.model.iron.global_stock data
scoreboard players operation #wallstreet.model.diamond.abundance_ratio(pcm) data = #wallstreet.model.diamond.global_stock data

scoreboard players operation #wallstreet.model.wood.abundance_ratio(pcm) data *= 1000 const
scoreboard players operation #wallstreet.model.stone.abundance_ratio(pcm) data *= 1000 const
scoreboard players operation #wallstreet.model.leather.abundance_ratio(pcm) data *= 1000 const
scoreboard players operation #wallstreet.model.iron.abundance_ratio(pcm) data *= 1000 const
scoreboard players operation #wallstreet.model.diamond.abundance_ratio(pcm) data *= 1000 const

scoreboard players operation #wallstreet.model.wood.abundance_ratio(pcm) data /= #wallstreet.model.total_resource_stock data
scoreboard players operation #wallstreet.model.stone.abundance_ratio(pcm) data /= #wallstreet.model.total_resource_stock data
scoreboard players operation #wallstreet.model.leather.abundance_ratio(pcm) data /= #wallstreet.model.total_resource_stock data
scoreboard players operation #wallstreet.model.iron.abundance_ratio(pcm) data /= #wallstreet.model.total_resource_stock data
scoreboard players operation #wallstreet.model.diamond.abundance_ratio(pcm) data /= #wallstreet.model.total_resource_stock data

scoreboard players operation #wallstreet.model.wood.price_index data = #wallstreet.model.starting_money data
scoreboard players operation #wallstreet.model.stone.price_index data = #wallstreet.model.starting_money data
scoreboard players operation #wallstreet.model.leather.price_index data = #wallstreet.model.starting_money data
scoreboard players operation #wallstreet.model.iron.price_index data = #wallstreet.model.starting_money data
scoreboard players operation #wallstreet.model.diamond.price_index data = #wallstreet.model.starting_money data

scoreboard players operation #wallstreet.model.wood.price_index data *= 1000 const
scoreboard players operation #wallstreet.model.stone.price_index data *= 1000 const
scoreboard players operation #wallstreet.model.leather.price_index data *= 1000 const
scoreboard players operation #wallstreet.model.iron.price_index data *= 1000 const
scoreboard players operation #wallstreet.model.diamond.price_index data *= 1000 const

scoreboard players operation #wallstreet.model.wood.price_index data /= #wallstreet.model.buy_power data
scoreboard players operation #wallstreet.model.stone.price_index data /= #wallstreet.model.buy_power data
scoreboard players operation #wallstreet.model.leather.price_index data /= #wallstreet.model.buy_power data
scoreboard players operation #wallstreet.model.iron.price_index data /= #wallstreet.model.buy_power data
scoreboard players operation #wallstreet.model.diamond.price_index data /= #wallstreet.model.buy_power data

scoreboard players operation #wallstreet.model.wood.price_index data /= #wallstreet.model.wood.abundance_ratio(pcm) data
scoreboard players operation #wallstreet.model.stone.price_index data /= #wallstreet.model.stone.abundance_ratio(pcm) data
scoreboard players operation #wallstreet.model.leather.price_index data /= #wallstreet.model.leather.abundance_ratio(pcm) data
scoreboard players operation #wallstreet.model.iron.price_index data /= #wallstreet.model.iron.abundance_ratio(pcm) data
scoreboard players operation #wallstreet.model.diamond.price_index data /= #wallstreet.model.diamond.abundance_ratio(pcm) data
