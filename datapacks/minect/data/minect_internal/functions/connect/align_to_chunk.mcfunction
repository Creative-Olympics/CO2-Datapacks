execute store result score @s minect_entity_pos run data get entity @s Pos[0] 1
scoreboard players operation @s minect_chunk_pos = @s minect_entity_pos
scoreboard players operation @s minect_entity_pos %= 16 minect_const
scoreboard players operation @s minect_chunk_pos -= @s minect_entity_pos
execute store result entity @s Pos[0] double 1 run scoreboard players get @s minect_chunk_pos

execute store result score @s minect_entity_pos run data get entity @s Pos[2] 1
scoreboard players operation @s minect_chunk_pos = @s minect_entity_pos
scoreboard players operation @s minect_entity_pos %= 16 minect_const
scoreboard players operation @s minect_chunk_pos -= @s minect_entity_pos
execute store result entity @s Pos[2] double 1 run scoreboard players get @s minect_chunk_pos
