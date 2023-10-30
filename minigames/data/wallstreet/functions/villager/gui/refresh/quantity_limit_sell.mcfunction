
function wallstreet:villager/utils/get_client_stock
function wallstreet:villager/utils/get_max_stock
function wallstreet:villager/utils/get_client_stock

scoreboard players operation #capacity ctx = #max_stock ctx
scoreboard players operation #capacity ctx -= #current_stock ctx

execute if score @s wallstreet.selected_quantity > #client_stock ctx run tag @s add wallstreet.villager.quantity.limited_by_player_stock
execute if score @s wallstreet.selected_quantity > #capacity ctx run tag @s add wallstreet.villager.quantity.limited_by_villager_max_stock

execute if entity @s[tag=wallstreet.villager.quantity.limited_by_player_stock] run say limited_by_player_stock
execute if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_max_stock] run say limited_by_villager_max_stock

scoreboard players operation @s wallstreet.selected_quantity < #max_stock ctx
scoreboard players operation @s wallstreet.selected_quantity < #client_stock ctx

scoreboard players operation #can_increase ctx = #client_stock ctx
scoreboard players operation #can_increase ctx < #max_stock ctx
scoreboard players operation #can_increase ctx -= @s wallstreet.selected_quantity
scoreboard players operation #can_decrease ctx = @s wallstreet.selected_quantity