# def buy_tax(quantity, current_stock):
#     if quantity > current_stock:
#         return 0
#
#     ideal_quantity = current_stock - ideal_stock
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

scoreboard players operation #ideal_quantity(%) ctx = #current_stock(%) ctx
scoreboard players operation #ideal_quantity(%) ctx -= #ideal_stock(%) ctx
# Always autorize to buy 10% more than the ideal quantity
scoreboard players operation #ideal_quantity(%) ctx += 10 const

scoreboard players set #tax ctx 0
execute if score #quantity(%) ctx < #ideal_quantity(%) ctx run return 0

scoreboard players operation #ideal_quantity(%) ctx -= 10 const

scoreboard players operation #tax ctx = #quantity(%) ctx
scoreboard players operation #tax ctx -= #ideal_quantity(%) ctx
