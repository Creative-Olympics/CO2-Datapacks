execute if score @s wallstreet.selected_resource matches 0 run scoreboard players operation #purchase_price ctx = @p[tag=wallstreet.villager.client] wallstreet.wood_price
execute if score @s wallstreet.selected_resource matches 1 run scoreboard players operation #purchase_price ctx = @p[tag=wallstreet.villager.client] wallstreet.stone_price
execute if score @s wallstreet.selected_resource matches 2 run scoreboard players operation #purchase_price ctx = @p[tag=wallstreet.villager.client] wallstreet.leather_price
execute if score @s wallstreet.selected_resource matches 3 run scoreboard players operation #purchase_price ctx = @p[tag=wallstreet.villager.client] wallstreet.iron_price
execute if score @s wallstreet.selected_resource matches 4 run scoreboard players operation #purchase_price ctx = @p[tag=wallstreet.villager.client] wallstreet.diamond_price