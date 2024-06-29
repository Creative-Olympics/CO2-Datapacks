tag @s add jump.checkpoint

$data merge storage jump:checkpoint {size:$(size),time:$(time),y_limit:$(y_limit),pos:[I;0,0,0]}
execute store result storage jump:checkpoint pos[0] int 1 run data get entity @s Pos[0]
execute store result storage jump:checkpoint pos[1] int 1 run data get entity @s Pos[1]
execute store result storage jump:checkpoint pos[2] int 1 run data get entity @s Pos[2]
data modify entity @s data.jump set from storage jump:checkpoint

execute store result score @s jump.time_left run data get storage jump:checkpoint time
execute store result score @s jump.step run scoreboard players add $jump.checkpoint_count data 1
