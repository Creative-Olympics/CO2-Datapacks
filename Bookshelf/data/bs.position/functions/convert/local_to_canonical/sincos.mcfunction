execute positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score #position.local_to_canonical.cos.h bs.data run data get entity @s Pos[2] 100
execute store result score #position.local_to_canonical.sin.h bs.data run data get entity @s Pos[0] 100
execute positioned 0.0 0.0 0.0 rotated 0.0 ~ run tp @s ^ ^ ^10.0
execute store result score #position.local_to_canonical.cos.v bs.data run data get entity @s Pos[2] 100
execute store result score #position.local_to_canonical.sin.v bs.data run data get entity @s Pos[1] 100
execute in minecraft:overworld run tp @s -30000000 0 1600
