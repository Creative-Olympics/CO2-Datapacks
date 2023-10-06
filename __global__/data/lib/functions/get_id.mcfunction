
execute store result score @s UUID run data get entity @s UUID[0]
execute if score @s SUID matches 0 store result score @s SUID run scoreboard players add #SUID_count data 1