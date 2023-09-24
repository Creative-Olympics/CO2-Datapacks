
$summon marker $(x) $(y) $(z) {Tags:["jump.checkpoint","jump.checkpoint.new"]}

execute store result score @e[tag=jump.checkpoint.new] jump.step run scoreboard players add $jump.checkpoint_count data 1
$scoreboard players set @e[tag=jump.checkpoint.new] jump.time_left $(time)

$data modify entity @e[tag=jump.checkpoint.new,limit=1] data.jump.checkpoint_properties.x set value $(x)
$data modify entity @e[tag=jump.checkpoint.new,limit=1] data.jump.checkpoint_properties.y set value $(y)
$data modify entity @e[tag=jump.checkpoint.new,limit=1] data.jump.checkpoint_properties.z set value $(z)
$data modify entity @e[tag=jump.checkpoint.new,limit=1] data.jump.checkpoint_properties.size set value $(size)
$data modify entity @e[tag=jump.checkpoint.new,limit=1] data.jump.checkpoint_properties.time set value $(time)
$data modify entity @e[tag=jump.checkpoint.new,limit=1] data.jump.checkpoint_properties.y_limit set value $(y_limit)

execute as @e[tag=jump.checkpoint.new,limit=1] store result entity @s data.jump.checkpoint_properties.x_int int 1 run data get entity @s data.jump.checkpoint_properties.x
execute as @e[tag=jump.checkpoint.new,limit=1] store result entity @s data.jump.checkpoint_properties.y_int int 1 run data get entity @s data.jump.checkpoint_properties.y
execute as @e[tag=jump.checkpoint.new,limit=1] store result entity @s data.jump.checkpoint_properties.z_int int 1 run data get entity @s data.jump.checkpoint_properties.z

tag @e[tag=jump.checkpoint.new] remove jump.checkpoint.new