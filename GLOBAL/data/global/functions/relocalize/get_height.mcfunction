
scoreboard players set @s reloc.vx 0

scoreboard players operation @s reloc.vy = @s reloc.y
scoreboard players operation @s reloc.vy -= @s pos.y
scoreboard players operation @s reloc.vy /= 20 const

scoreboard players set @s reloc.vz 0
