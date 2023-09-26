
execute at @a[team=jump] run effect give @e[distance=0.001..2] invisibility 1 1
execute at @a[team=jump] as @e[tag=lobby.horse,distance=..3] run function lobby:horse/kill