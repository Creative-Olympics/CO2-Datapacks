
# Check if selected quantity exceed villager stock

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #max_stock tmp = @s wallstreet.wood_quantity
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #max_stock tmp = @s wallstreet.stone_quantity
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #max_stock tmp = @s wallstreet.leather_quantity
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #max_stock tmp = @s wallstreet.iron_quantity

execute if score @s wallstreet.selected_resource matches 4 run \
    scoreboard players operation #max_stock tmp = @s wallstreet.diamond_quantity

# Check if selected quantity is above the buy power of the client

scoreboard players operation #buy_power tmp = @p[tag=wallstreet.villager.client] wallstreet.budget
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #buy_power tmp /= @s wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #buy_power tmp /= @s wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #buy_power tmp /= @s wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #buy_power tmp /= @s wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #buy_power tmp /= @s wallstreet.diamond_price

scoreboard players operation #limit tmp = #max_stock tmp
scoreboard players operation #limit tmp < #buy_power tmp

execute if score @s wallstreet.selected_quantity > #buy_power tmp run tag @s add wallstreet.villager.quantity.limited_by_client_budget
execute if score @s wallstreet.selected_quantity > #max_stock tmp unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] run tag @s add wallstreet.villager.quantity.limited_by_villager_stock

execute if score @s wallstreet.selected_quantity > #limit tmp run \
    scoreboard players operation @s wallstreet.selected_quantity = #limit tmp

scoreboard players operation #can_increase tmp = #limit tmp
scoreboard players operation #can_increase tmp -= @s wallstreet.selected_quantity
scoreboard players operation #can_decrease tmp = @s wallstreet.selected_quantity