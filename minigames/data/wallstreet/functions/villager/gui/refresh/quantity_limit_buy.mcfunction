
# Check if selected quantity exceed villager stock

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #max_stock ctx = @s wallstreet.wood_current_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #max_stock ctx = @s wallstreet.stone_current_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #max_stock ctx = @s wallstreet.leather_current_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #max_stock ctx = @s wallstreet.iron_current_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #max_stock ctx = @s wallstreet.diamond_current_stock

# Check if selected quantity is above the buy power of the client

scoreboard players operation #buy_power ctx = @p[tag=wallstreet.villager.client] wallstreet.budget
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #buy_power ctx /= @s wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #buy_power ctx /= @s wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #buy_power ctx /= @s wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #buy_power ctx /= @s wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #buy_power ctx /= @s wallstreet.diamond_price

scoreboard players operation #limit ctx = #max_stock ctx
scoreboard players operation #limit ctx < #buy_power ctx

execute if score @s wallstreet.selected_quantity > #buy_power ctx run tag @s add wallstreet.villager.quantity.limited_by_client_budget
execute if score @s wallstreet.selected_quantity > #max_stock ctx unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] run tag @s add wallstreet.villager.quantity.limited_by_villager_stock

execute if score @s wallstreet.selected_quantity > #limit ctx run scoreboard players operation @s wallstreet.selected_quantity = #limit ctx

scoreboard players operation #can_increase ctx = #limit ctx
scoreboard players operation #can_increase ctx -= @s wallstreet.selected_quantity
scoreboard players operation #can_decrease ctx = @s wallstreet.selected_quantity