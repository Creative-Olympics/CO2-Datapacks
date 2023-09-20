scoreboard players set version minect_version 1

scoreboard objectives add minect_global dummy
scoreboard objectives add minect_chunk_pos dummy
scoreboard objectives add minect_entity_pos dummy

scoreboard objectives add minect_const dummy
scoreboard players set 16 minect_const 16

scoreboard objectives add minect_config dummy
scoreboard players set update_delay minect_config 1

gamerule commandBlockOutput false
