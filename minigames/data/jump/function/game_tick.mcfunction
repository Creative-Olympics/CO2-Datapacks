execute as @e[type=marker,tag=jump.checkpoint] run function jump:checkpoint/as_player

execute at @a[team=jump] as @e[type=horse,tag=lobby.horse,distance=..3] run function lobby:horse/kill
execute at @a[team=jump] run effect give @a[distance=0.001..2] invisibility 1 1

execute as @a[team=jump,scores={jump.time_left=1..}] at @s run function jump:timer/display

scoreboard players remove @a[team=jump] jump.time_left 1
scoreboard players add @a[team=jump] jump.checkpoint_timer 1
scoreboard players add @a[team=jump] jump.timer 1
