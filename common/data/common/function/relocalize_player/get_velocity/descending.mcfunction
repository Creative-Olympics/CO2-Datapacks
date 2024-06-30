scoreboard players set @s bs.pos.x 0
scoreboard players set @s bs.pos.y -250000
scoreboard players operation @s bs.pos.y += @a[predicate=bs.id:suid_equal,limit=1] bs.pos.y
scoreboard players operation @s bs.pos.y /= 20 const
scoreboard players set @s bs.pos.z 0
