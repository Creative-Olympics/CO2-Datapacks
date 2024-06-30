
# Variation of the global resource stock
scoreboard players operation #mean input = #wallstreet.model.wood.ideal_stock data
scoreboard players operation #std input = #wallstreet.model.wood.ideal_stock data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.wood.ideal_stock data = #x output

scoreboard players operation #mean input = #wallstreet.model.stone.ideal_stock data
scoreboard players operation #std input = #wallstreet.model.stone.ideal_stock data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.stone.ideal_stock data = #x output

scoreboard players operation #mean input = #wallstreet.model.leather.ideal_stock data
scoreboard players operation #std input = #wallstreet.model.leather.ideal_stock data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.leather.ideal_stock data = #x output

scoreboard players operation #mean input = #wallstreet.model.iron.ideal_stock data
scoreboard players operation #std input = #wallstreet.model.iron.ideal_stock data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.iron.ideal_stock data = #x output

scoreboard players operation #mean input = #wallstreet.model.diamond.ideal_stock data
scoreboard players operation #std input = #wallstreet.model.diamond.ideal_stock data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.diamond.ideal_stock data = #x output

# ---

scoreboard players operation #wallstreet.model.total_resource_stock data = #wallstreet.model.wood.ideal_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.stone.ideal_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.leather.ideal_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.iron.ideal_stock data
scoreboard players operation #wallstreet.model.total_resource_stock data += #wallstreet.model.diamond.ideal_stock data

scoreboard players operation #wallstreet.model.wood.abundance_ratio(pcm) data = #wallstreet.model.wood.ideal_stock data
scoreboard players operation #wallstreet.model.stone.abundance_ratio(pcm) data = #wallstreet.model.stone.ideal_stock data
scoreboard players operation #wallstreet.model.leather.abundance_ratio(pcm) data = #wallstreet.model.leather.ideal_stock data
scoreboard players operation #wallstreet.model.iron.abundance_ratio(pcm) data = #wallstreet.model.iron.ideal_stock data
scoreboard players operation #wallstreet.model.diamond.abundance_ratio(pcm) data = #wallstreet.model.diamond.ideal_stock data

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

# Variation of the price index
scoreboard players operation #mean input = #wallstreet.model.wood.price_index data
scoreboard players operation #std input = #wallstreet.model.wood.price_index data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.wood.price_index data = #x output
scoreboard players operation #wallstreet.model.wood.price_index data > 1 const

scoreboard players operation #mean input = #wallstreet.model.stone.price_index data
scoreboard players operation #std input = #wallstreet.model.stone.price_index data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.stone.price_index data = #x output
scoreboard players operation #wallstreet.model.stone.price_index data > 1 const

scoreboard players operation #mean input = #wallstreet.model.leather.price_index data
scoreboard players operation #std input = #wallstreet.model.leather.price_index data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.leather.price_index data = #x output
scoreboard players operation #wallstreet.model.leather.price_index data > 1 const

scoreboard players operation #mean input = #wallstreet.model.iron.price_index data
scoreboard players operation #std input = #wallstreet.model.iron.price_index data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.iron.price_index data = #x output
scoreboard players operation #wallstreet.model.iron.price_index data > 1 const

scoreboard players operation #mean input = #wallstreet.model.diamond.price_index data
scoreboard players operation #std input = #wallstreet.model.diamond.price_index data
scoreboard players operation #std input /= 10 const
function #common:random_normal
scoreboard players operation #wallstreet.model.diamond.price_index data = #x output
scoreboard players operation #wallstreet.model.diamond.price_index data > 1 const
