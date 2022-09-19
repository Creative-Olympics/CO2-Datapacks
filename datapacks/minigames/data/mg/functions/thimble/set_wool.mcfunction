# Jump Complete

function mg:lib/random
scoreboard players operation @s random %= 7 const
scoreboard players operation @s[scores={random=..-1}] random *= -1 const
execute at @s[scores={random=0}] run setblock ~ ~ ~ black_wool
execute at @s[scores={random=1}] run setblock ~ ~ ~ white_wool
execute at @s[scores={random=2}] run setblock ~ ~ ~ red_wool
execute at @s[scores={random=3}] run setblock ~ ~ ~ lime_wool
execute at @s[scores={random=4}] run setblock ~ ~ ~ blue_wool
execute at @s[scores={random=5}] run setblock ~ ~ ~ magenta_wool
execute at @s[scores={random=6}] run setblock ~ ~ ~ yellow_wool
