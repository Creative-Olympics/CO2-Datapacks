# Executed as & at player
# tellraw @a [{"text":"oitc:events/death on "},{"selector":"@s"}]

# Firework
summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16711680]}]}}}}

# Summon death camera
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["oitc_death_camera"]}
tp @e[tag=oitc_death_camera,sort=nearest,limit=1] @s
execute as @e[tag=oitc_death_camera,sort=nearest,limit=1] at @s run tp @s ~ ~1.7 ~
execute as @e[tag=oitc_death_camera,sort=nearest,limit=1] at @s run tp @s ^ ^ ^-3
gamemode spectator