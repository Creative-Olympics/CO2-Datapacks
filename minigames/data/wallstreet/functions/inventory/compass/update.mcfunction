scoreboard players operation #wallstreet.compass.select data = @s wallstreet.compass.select

execute as @e[tag=wallstreet.villager_marker,predicate=wallstreet:compass/is_target,limit=1] store result entity @s data.wallstreet.compass.pos.x int 1 run data get entity @s Pos[0]
execute as @e[tag=wallstreet.villager_marker,predicate=wallstreet:compass/is_target,limit=1] store result entity @s data.wallstreet.compass.pos.y int 1 run data get entity @s Pos[1]
execute as @e[tag=wallstreet.villager_marker,predicate=wallstreet:compass/is_target,limit=1] store result entity @s data.wallstreet.compass.pos.z int 1 run data get entity @s Pos[2]

function wallstreet:inventory/compass/update_child with entity @e[tag=wallstreet.villager_marker,predicate=wallstreet:compass/is_target,limit=1] data.wallstreet.compass.pos