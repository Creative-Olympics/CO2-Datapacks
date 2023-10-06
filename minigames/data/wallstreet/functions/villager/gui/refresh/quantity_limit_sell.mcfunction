# Check if selected quantity exceed player stock

# Getting player stock
execute if score @s wallstreet.selected_resource matches 0 run \
    scoreboard players operation #player_stock tmp = @p[tag=wallstreet.villager.client] wallstreet.wood_quantity
execute if score @s wallstreet.selected_resource matches 1 run \
    scoreboard players operation #player_stock tmp = @p[tag=wallstreet.villager.client] wallstreet.stone_quantity
execute if score @s wallstreet.selected_resource matches 2 run \
    scoreboard players operation #player_stock tmp = @p[tag=wallstreet.villager.client] wallstreet.leather_quantity
execute if score @s wallstreet.selected_resource matches 3 run \
    scoreboard players operation #player_stock tmp = @p[tag=wallstreet.villager.client] wallstreet.iron_quantity
execute if score @s wallstreet.selected_resource matches 4 run \
    scoreboard players operation #player_stock tmp = @p[tag=wallstreet.villager.client] wallstreet.diamond_quantity

execute if score @s wallstreet.selected_quantity > #player_stock tmp run tag @s add wallstreet.villager.quantity.limited_by_player_stock

scoreboard players operation @s wallstreet.selected_quantity < #player_stock tmp

scoreboard players operation #can_increase tmp = #player_stock tmp
scoreboard players operation #can_increase tmp -= @s wallstreet.selected_quantity
scoreboard players operation #can_decrease tmp = @s wallstreet.selected_quantity