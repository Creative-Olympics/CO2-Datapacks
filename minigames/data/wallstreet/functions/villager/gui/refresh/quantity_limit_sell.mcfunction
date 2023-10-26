# Check if selected quantity exceed player stock

# Getting player stock
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #player_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.wood_current_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #player_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.stone_current_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #player_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.leather_current_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #player_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.iron_current_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #player_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.diamond_current_stock

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #max_stock ctx = @s wallstreet.wood_max_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #max_stock ctx = @s wallstreet.stone_max_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #max_stock ctx = @s wallstreet.leather_max_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #max_stock ctx = @s wallstreet.iron_max_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #max_stock ctx = @s wallstreet.diamond_max_stock

execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #max_stock ctx -= @s wallstreet.wood_current_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #max_stock ctx -= @s wallstreet.stone_current_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #max_stock ctx -= @s wallstreet.leather_current_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #max_stock ctx -= @s wallstreet.iron_current_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #max_stock ctx -= @s wallstreet.diamond_current_stock

execute if score @s wallstreet.selected_quantity > #player_stock ctx run tag @s add wallstreet.villager.quantity.limited_by_player_stock
execute if score @s wallstreet.selected_quantity > #max_stock ctx run tag @s add wallstreet.villager.quantity.limited_by_villager_max_stock

scoreboard players operation @s wallstreet.selected_quantity < #max_stock ctx
scoreboard players operation @s wallstreet.selected_quantity < #player_stock ctx

scoreboard players operation #can_increase ctx = #player_stock ctx
scoreboard players operation #can_increase ctx < #max_stock ctx
scoreboard players operation #can_increase ctx -= @s wallstreet.selected_quantity
scoreboard players operation #can_decrease ctx = @s wallstreet.selected_quantity