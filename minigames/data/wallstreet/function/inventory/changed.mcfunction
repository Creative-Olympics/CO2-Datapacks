item replace entity @s hotbar.0 with minecraft:stick[item_name='""']
item replace entity @s hotbar.1 with minecraft:clay_ball[item_name='""']
item replace entity @s hotbar.2 with minecraft:leather[item_name='""']
item replace entity @s hotbar.3 with minecraft:iron_ingot[item_name='""']
item replace entity @s hotbar.4 with minecraft:diamond[item_name='""']

item replace entity @s hotbar.6 with minecraft:emerald[item_name='""']
item replace entity @s hotbar.8 with minecraft:book[item_name='""']

scoreboard players operation #this wallstreet.villager_id = @s wallstreet.compass_id
function wallstreet:inventory/compass/give with entity @e[type=minecraft:marker,tag=wallstreet.villager,predicate=wallstreet:check_villager,limit=1] data

advancement revoke @s only wallstreet:inventory_changed
