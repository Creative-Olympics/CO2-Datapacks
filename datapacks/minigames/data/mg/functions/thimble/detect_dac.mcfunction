
tag @e remove thimble.dac
scoreboard players reset @s tmp
execute at @s unless block ~1 ~ ~ water run scoreboard players add @s tmp 1
execute at @s unless block ~ ~ ~1 water run scoreboard players add @s tmp 1
execute at @s unless block ~-1 ~ ~ water run scoreboard players add @s tmp 1
execute at @s unless block ~ ~ ~-1 water run scoreboard players add @s tmp 1

tag @s[scores={tmp=4}] add thimble.dac
execute as @s[tag=thimble.dac] at @s run playsound minecraft:ui.toast.challenge_complete master @a[tag=thimble.inGame] ~ ~ ~ 2 1.5 1
scoreboard players add @s[tag=thimble.dac] thimble.lives 1
