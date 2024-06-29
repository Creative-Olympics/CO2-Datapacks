
execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #client_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.wood_current_stock
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #client_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.stone_current_stock
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #client_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.leather_current_stock
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #client_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.iron_current_stock
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #client_stock ctx = @p[tag=wallstreet.villager.client] wallstreet.diamond_current_stock