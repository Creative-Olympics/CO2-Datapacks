# Jump Complete

execute as @s store result score @s tmp run random value 0..6
execute at @s[scores={tmp=0}] run setblock ~ 80 ~ black_wool
execute at @s[scores={tmp=1}] run setblock ~ 80 ~ white_wool
execute at @s[scores={tmp=2}] run setblock ~ 80 ~ red_wool
execute at @s[scores={tmp=3}] run setblock ~ 80 ~ lime_wool
execute at @s[scores={tmp=4}] run setblock ~ 80 ~ light_blue_wool
execute at @s[scores={tmp=5}] run setblock ~ 80 ~ magenta_wool
execute at @s[scores={tmp=6}] run setblock ~ 80 ~ yellow_wool
