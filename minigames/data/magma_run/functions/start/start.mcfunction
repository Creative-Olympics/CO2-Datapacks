
execute at @e[tag=lib.start_animation.magma_run] run team join magma_run @a[distance=..21]
execute at @e[tag=lib.start_animation.magma_run] run kill @e[tag=global.lobby_horse,distance=..21]
clear @a[team=magma_run]

execute as @a[team=magma_run] at @s run function #global:animated_title {type:"start"}
execute as @a[team=magma_run] at @s run stopsound @s music
execute as @a[team=magma_run] at @s run playsound magma_run:theme music @s
execute as @a[team=magma_run] at @s run tellraw @s {"text":"Music by Oleksii Holubiev from Pixabay"}

effect give @a[team=magma_run] speed infinite 2 true
scoreboard players set $magma_run.game_started data 1

setblock -236 101 17 minecraft:air
setblock -196 101 17 minecraft:air

fill -218 100 -4 -214 100 -4 sandstone_wall
fill -219 101 -4 -213 101 -4 barrier
fill -218 100 38 -214 100 38 sandstone_wall
fill -213 101 38 -219 101 38 barrier
