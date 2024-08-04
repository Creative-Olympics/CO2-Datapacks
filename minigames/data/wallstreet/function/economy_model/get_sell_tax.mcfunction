# def sell_tax(quantity, current_stock):
#     if quantity > (1-current_stock):
#         return 0
#
#     ideal_quantity = ideal_stock - current_stock
#
#     if quantity < ideal_quantity:
#         return 0
#
#     tax = quantity - ideal_quantity
#
#     return tax

scoreboard players set #ideal_stock(%) ctx 50

scoreboard players operation #current_stock(%) ctx = #current_stock ctx
scoreboard players operation #current_stock(%) ctx *= 100 const
scoreboard players operation #current_stock(%) ctx /= #max_stock ctx

scoreboard players operation #quantity(%) ctx = #quantity ctx
scoreboard players operation #quantity(%) ctx *= 100 const
scoreboard players operation #quantity(%) ctx /= #max_stock ctx

scoreboard players operation #ideal_quantity(%) ctx = #ideal_stock(%) ctx
scoreboard players operation #ideal_quantity(%) ctx -= #current_stock(%) ctx

scoreboard players set #tax ctx 0
execute if score #quantity(%) ctx < #ideal_quantity(%) ctx run return 0
# Always autorize to sell 10% more than the ideal quantity
execute if score #quantity(%) ctx matches ..10 run return 0

scoreboard players operation #tax ctx = #quantity(%) ctx
scoreboard players operation #tax ctx -= #ideal_quantity(%) ctx
