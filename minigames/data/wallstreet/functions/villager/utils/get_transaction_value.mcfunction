
function wallstreet:villager/utils/get_max_stock
function wallstreet:villager/utils/get_current_stock
function wallstreet:villager/utils/get_price_without_tax
function wallstreet:villager/utils/get_quantity

scoreboard players operation #transaction_value ctx = #price ctx
scoreboard players operation #transaction_value ctx *= #quantity ctx

execute if entity @s[tag=!wallstreet.villager.sell] run function wallstreet:economy_model/get_buy_tax
execute if entity @s[tag=wallstreet.villager.sell] run function wallstreet:economy_model/get_sell_tax

scoreboard players operation #transaction_taxes ctx = #tax ctx
scoreboard players operation #transaction_taxes ctx *= #transaction_value ctx
scoreboard players operation #transaction_taxes ctx /= 100 const

execute if entity @s[tag=!wallstreet.villager.sell] run scoreboard players operation #transaction_value ctx += #transaction_taxes ctx
execute if entity @s[tag=wallstreet.villager.sell] run scoreboard players operation #transaction_value ctx -= #transaction_taxes ctx