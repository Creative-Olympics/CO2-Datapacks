# price = global_price * (1 - 0.5*(quantity - average_quantity) / average_quantity)
# price = max(0.5 * global_price, price)
# price = min(1.5 * global_price, price)

# Inputs:
# - #wallstreet.get_price.quantity data
# - #wallstreet.get_price.global_quantity data
# - #wallstreet.get_price.global_price

# Outputs:
# - #wallstreet.get_price.price data

# Apply model
scoreboard players operation #wallstreet.get_price.average_quantity data = #wallstreet.get_price.global_quantity data
scoreboard players operation #wallstreet.get_price.average_quantity data /= #wallstreet.villager_count data

scoreboard players operation #wallstreet.get_price.delta data = #wallstreet.get_price.quantity data
scoreboard players operation #wallstreet.get_price.delta data -= #wallstreet.get_price.average_quantity data
scoreboard players operation #wallstreet.get_price.delta data *= 1000 const
scoreboard players operation #wallstreet.get_price.delta data /= #wallstreet.get_price.average_quantity data

scoreboard players operation #wallstreet.get_price.x data = 1000 const
scoreboard players operation #wallstreet.get_price.x data -= #wallstreet.get_price.delta data

scoreboard players operation #wallstreet.get_price.price data = #wallstreet.get_price.global_price data
scoreboard players operation #wallstreet.get_price.price data *= #wallstreet.get_price.x data
scoreboard players operation #wallstreet.get_price.price data /= 1000 data
scoreboard players operation #wallstreet.get_price.price data /= 1000 data

# Randomize
scoreboard players operation #mean tmp = #wallstreet.get_price.price data
scoreboard players operation #std tmp = #mean tmp
scoreboard players operation #std tmp /= 10 const
function #lib:random_normal
scoreboard players operation #wallstreet.get_price.price data = #mean tmp

# Apply limits
scoreboard players operation #wallstreet.get_price.max_price data = #wallstreet.get_price.global_price data
scoreboard players operation #wallstreet.get_price.max_price data *= 1500 const
scoreboard players operation #wallstreet.get_price.max_price data /= 1000 const
scoreboard players operation #wallstreet.get_price.max_price data /= 1000 const
scoreboard players operation #wallstreet.get_price.price data < #wallstreet.get_price.max_price data

scoreboard players operation #wallstreet.get_price.min_price data = #wallstreet.get_price.global_price data
scoreboard players operation #wallstreet.get_price.min_price data /= 2 const
scoreboard players operation #wallstreet.get_price.max_price data /= 1000 const
scoreboard players operation #wallstreet.get_price.min_price data < 1 const
scoreboard players operation #wallstreet.get_price.price data > #wallstreet.get_price.max_price data