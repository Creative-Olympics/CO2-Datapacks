scoreboard players set @s bs.pos.x 0
execute store result score @s bs.pos.y run data get entity @s Pos[1] -1000
scoreboard players add @s bs.pos.y 250000
scoreboard players operation @s bs.pos.y /= 20 const
scoreboard players set @s bs.pos.z 0
