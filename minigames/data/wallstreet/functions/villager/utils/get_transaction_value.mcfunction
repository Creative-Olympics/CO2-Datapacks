
function wallstreet:villager/utils/get_max_stock
function wallstreet:villager/utils/get_current_stock
function wallstreet:villager/utils/get_price_without_tax
function wallstreet:villager/utils/get_quantity

scoreboard players operation #transaction_value ctx = #price ctx
scoreboard players operation #transaction_value ctx *= #quantity ctx

# tellraw @a {"text":"----------"}
# tellraw @a [{"text":"Max stock: "},{"score":{"name":"#max_stock","objective":"ctx"}}]
# tellraw @a [{"text":"Current stock: "},{"score":{"name":"#current_stock","objective":"ctx"}}]
# tellraw @a [{"text":"Price/item: "},{"score":{"name":"#price","objective":"ctx"}}]
# tellraw @a [{"text":"Transaction HT: "},{"score":{"name":"#transaction_value","objective":"ctx"}}]
# tellraw @a [{"text":"Quantity: "},{"score":{"name":"#quantity","objective":"ctx"}}]

execute if entity @s[tag=!wallstreet.villager.sell] run function wallstreet:economy_model/get_buy_tax
execute if entity @s[tag=wallstreet.villager.sell] run function wallstreet:economy_model/get_sell_tax

# tellraw @a [{"text":"Tax %: "},{"score":{"name":"#tax","objective":"ctx"}}]

scoreboard players operation #transaction_taxes ctx = #tax ctx
scoreboard players operation #transaction_taxes ctx *= #transaction_value ctx
scoreboard players operation #transaction_taxes ctx /= 100 const

# tellraw @a [{"text":"Taxes: "},{"score":{"name":"#transaction_taxes","objective":"ctx"}}]

execute if entity @s[tag=!wallstreet.villager.sell] run scoreboard players operation #transaction_value ctx += #transaction_taxes ctx
execute if entity @s[tag=wallstreet.villager.sell] run scoreboard players operation #transaction_value ctx -= #transaction_taxes ctx

# tellraw @a [{"text":"Transaction TTC: "},{"score":{"name":"#transaction_value","objective":"ctx"}}]