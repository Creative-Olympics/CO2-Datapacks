
# Firework effect
particle dust 1.000 0.000 0.000 1 ~ ~1 ~ 0.3 0.5 0.5 1 100 normal
particle flash ~ ~1 ~ 0 0 0 0 1 normal
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1 1

# Summon death camera
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["oitc_death_camera"]}
tp @e[tag=oitc_death_camera,sort=nearest,limit=1] @s
execute as @e[tag=oitc_death_camera,sort=nearest,limit=1] at @s run tp @s ~ ~1.7 ~
execute as @e[tag=oitc_death_camera,sort=nearest,limit=1] at @s run tp @s ^ ^ ^-3
gamemode spectator