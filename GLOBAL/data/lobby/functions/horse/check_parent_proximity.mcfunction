
tag @s add lobby.horse.no_parent
execute as @a[team=lobby,distance=..30] if score @s SUID = @e[tag=lobby.horse.no_parent,limit=1,sort=nearest] parent.SUID run tag @e[tag=lobby.horse.no_parent,limit=1,sort=nearest] remove lobby.horse.no_parent
execute if entity @s[tag=lobby.horse.no_parent] run function lobby:horse/kill