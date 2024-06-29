# price = price_index * (1 - 0.5*(current_stock - max_stock) / max_stock)
# price = max(0.5 * price_index, price)
# price = min(1.5 * price_index, price)

# Inputs:
# - #current_stock input
# - #max_stock input
# - #price_index input

# Outputs:
# - #price output

# Define context
scoreboard players operation #stock_index ctx = #max_stock input
scoreboard players operation #stock_index ctx /= 2 const

# tellraw @a [{"text":"stock index: "},{"score":{"name":"#stock_index","objective":"ctx"}}]

# Apply model
scoreboard players operation #stock_diff(pcm) ctx = #current_stock input
scoreboard players operation #stock_diff(pcm) ctx -= #stock_index ctx

# tellraw @a [{"text":"stock diff: "},{"score":{"name":"#stock_diff(pcm)","objective":"ctx"}}]

scoreboard players operation #stock_diff(pcm) ctx *= 500 const
scoreboard players operation #stock_diff(pcm) ctx /= #stock_index ctx

# tellraw @a [{"text":"stock diff (pcm): "},{"score":{"name":"#stock_diff(pcm)","objective":"ctx"}}]

scoreboard players operation #1-stock_diff(pcm) ctx = 1000 const
scoreboard players operation #1-stock_diff(pcm) ctx -= #stock_diff(pcm) ctx

# tellraw @a [{"text":"1 - stock diff (pcm): "},{"score":{"name":"#1-stock_diff(pcm)","objective":"ctx"}}]

scoreboard players operation #price output = #price_index input
scoreboard players operation #price output *= #1-stock_diff(pcm) ctx
scoreboard players operation #price output /= 1000 const

# tellraw @a [{"text":"price unbounded: "},{"score":{"name":"#price","objective":"output"}}]

# Apply limits
scoreboard players operation #price_upper_limit ctx = #price_index input
scoreboard players operation #price_upper_limit ctx *= 1500 const
scoreboard players operation #price_upper_limit ctx /= 1000 const
scoreboard players operation #price output < #price_upper_limit ctx

scoreboard players operation #price_lower_limit ctx = #price_index input
scoreboard players operation #price_lower_limit ctx /= 2 const
scoreboard players operation #price output > #price_lower_limit ctx

# tellraw @a [{"text":"price bounded: "},{"score":{"name":"#price","objective":"output"}}]

# Randomize
scoreboard players operation #mean input = #price output
scoreboard players operation #std input = #mean input
scoreboard players operation #std input /= 10 const
function #lib:random_normal
scoreboard players operation #price output = #x output

# tellraw @a [{"text":"price randomized: "},{"score":{"name":"#price","objective":"output"}}]

scoreboard players operation #price output > 1 const

# tellraw @a [{"text":"price final: "},{"score":{"name":"#price","objective":"output"}}]