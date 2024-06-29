execute store result score @s bs.pos.x run data get entity @s Pos[0] -1000
scoreboard players operation @s bs.pos.x += @a[predicate=bs.id:suid_equal,limit=1] bs.pos.x
scoreboard players operation @s bs.pos.x /= 20 const
scoreboard players set @s bs.pos.y 0
execute store result score @s bs.pos.z run data get entity @s Pos[2] -1000
scoreboard players operation @s bs.pos.z += @a[predicate=bs.id:suid_equal,limit=1] bs.pos.z
scoreboard players operation @s bs.pos.z /= 20 const
