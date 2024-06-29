
scoreboard players operation #wallstreet.compass.select data = @s wallstreet.compass.select

function wallstreet:inventory/compass/apply_name_child with entity @e[tag=wallstreet.villager_marker,predicate=wallstreet:compass/is_target,limit=1] data.wallstreet