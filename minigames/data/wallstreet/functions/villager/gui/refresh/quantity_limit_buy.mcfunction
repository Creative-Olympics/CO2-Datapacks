
function wallstreet:villager/utils/get_current_stock

scoreboard players operation #limit ctx = #current_stock ctx
scoreboard players operation #limit ctx < #buy_power ctx

execute if score @s wallstreet.selected_quantity > #current_stock ctx run tag @s add wallstreet.villager.quantity.limited_by_villager_stock
execute if score @s wallstreet.selected_quantity > #current_stock ctx run scoreboard players operation @s wallstreet.selected_quantity = #current_stock ctx

scoreboard players operation #can_increase ctx = #current_stock ctx
scoreboard players operation #can_increase ctx -= @s wallstreet.selected_quantity
scoreboard players operation #can_decrease ctx = @s wallstreet.selected_quantity