execute as @e[tag=jump.checkpoint] at @s run tp @s ~ ~ ~ ~10 0

execute at @a[team=jump] as @e[tag=lobby.horse,distance=..3] run function lobby:horse/kill
execute at @a[team=jump] run effect give @e[type=!marker,distance=0.001..2] invisibility 1 1

execute as @a[team=jump,scores={jump.time_left=1..}] at @s run function jump:timer/display

scoreboard players remove @a[team=jump] jump.time_left 1
scoreboard players add @a[team=jump] jump.checkpoint_timer 1
scoreboard players add @a[team=jump] jump.timer 1
