
# Join game
tag @a remove tnt_run.justJoined
tag @a[x=-219,y=100,z=-8,dx=5,dy=4,dz=3] add tnt_run.justJoined
tag @a[x=-219,y=100,z=38,dx=5,dy=4,dz=3] add tnt_run.justJoined
spreadplayers -215.48 17.58 0 10 false @a[tag=tnt_run.justJoined]
execute as @a[tag=tnt_run.justJoined] at @s run tp @s ~ ~2.5 ~
tag @a[x=-216,y=100,z=17,distance=..22,scores={locY=99..102},tag=!tnt_run.inGame] add tnt_run.justJoined

playsound minecraft:entity.ender_dragon.flap master @s[tag=tnt_run.justJoined] ~ ~ ~ 2 2 1

# Players alive
tag @a remove tnt_run.inGame
execute as @a[x=-216,y=100,z=17,distance=..22,scores={locY=99..102}] run tag @s add tnt_run.inGame
execute as @a[tag=tnt_run.inGame] at @s if block ~ ~-1.001 ~ magma_block unless entity @e[type=armor_stand,tag=tnt_run.break,distance=..0.5] run summon armor_stand ~ ~-1 ~ {Invisible:1,NoGravity:1,Marker:1,Small:1,Tags:["tnt_run.break"]}


# Break block
#execute as @e[tag=tnt_run.break] at @s run particle minecraft:block red_sand ~ ~1.1 ~ 0.2 0 0.2 0 1

execute as @e[tag=tnt_run.break,scores={timeExist=..1}] at @s positioned ~0.3 ~ ~0.3 if block ~ ~ ~ sand run setblock ~ ~ ~ red_sand
execute as @e[tag=tnt_run.break,scores={timeExist=..1}] at @s positioned ~0.3 ~ ~-0.3 if block ~ ~ ~ sand run setblock ~ ~ ~ red_sand
execute as @e[tag=tnt_run.break,scores={timeExist=..1}] at @s positioned ~-0.3 ~ ~0.3 if block ~ ~ ~ sand run setblock ~ ~ ~ red_sand
execute as @e[tag=tnt_run.break,scores={timeExist=..1}] at @s positioned ~-0.3 ~ ~-0.3 if block ~ ~ ~ sand run setblock ~ ~ ~ red_sand
execute as @e[tag=tnt_run.break,scores={timeExist=10..}] at @s positioned ~0.3 ~ ~0.3 if block ~ ~ ~ red_sand run setblock ~ ~ ~ structure_void destroy
execute as @e[tag=tnt_run.break,scores={timeExist=10..}] at @s positioned ~0.3 ~ ~-0.3 if block ~ ~ ~ red_sand run setblock ~ ~ ~ structure_void destroy
execute as @e[tag=tnt_run.break,scores={timeExist=10..}] at @s positioned ~-0.3 ~ ~0.3 if block ~ ~ ~ red_sand run setblock ~ ~ ~ structure_void destroy
execute as @e[tag=tnt_run.break,scores={timeExist=10..}] at @s positioned ~-0.3 ~ ~-0.3 if block ~ ~ ~ red_sand run setblock ~ ~ ~ structure_void destroy
kill @e[tag=tnt_run.break,scores={timeExist=10..},type=!player]


# Death
tag @a remove tnt_run.justDied
execute as @a[x=-216,y=100,z=17,distance=..22] at @s if block ~ ~-0.3 ~ magma_block run tag @s add tnt_run.justDied
execute as @a[tag=tnt_run.justDied] at @s unless entity @a[tag=tnt_run.inGame,distance=0.1..] run tag @s add tnt_run.lastAlive
execute at @a[tag=tnt_run.justDied] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;11743532,4312372,14602026,6719955],FadeColors:[I;11743532,4312372,14602026,6719955]}],Flight:0}}}}
execute as @a[tag=tnt_run.justDied] run function __lib__:random
scoreboard players set TMP data 0
execute as @a[tag=tnt_run.inGame] run scoreboard players add TMP data 1
execute as @a[tag=tnt_run.justDied] run playsound minecraft:block.stone_button.click_on master @a[x=-216,y=100,z=17,distance=..35] ~ ~ ~ 2 2 1
execute as @a[tag=tnt_run.justDied] run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"TNT RUN >","color":"yellow"},{"text":" ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" fell. Position: ","color":"gray"},{"score":{"name":"TMP","objective":"data"},"color":"yellow"}]
scoreboard players operation @a[tag=tnt_run.justDied,scores={random=..-1}] random *= -1 const
scoreboard players operation @a[tag=tnt_run.justDied] random %= 4 const
tp @a[tag=tnt_run.justDied,scores={random=0}] -199 104 0 45 5
tp @a[tag=tnt_run.justDied,scores={random=1}] -199 104 34 135 5
tp @a[tag=tnt_run.justDied,scores={random=2}] -233 104 0 -45 5
tp @a[tag=tnt_run.justDied,scores={random=3}] -233 104 34 -135 5

# Bloc access
execute if score TNT_RUN gameStarted matches 1 run fill -218 100 -4 -214 100 -4 sandstone_wall
execute if score TNT_RUN gameStarted matches 1 run fill -219 101 -4 -213 101 -4 barrier
execute if score TNT_RUN gameStarted matches 1 run fill -215 100 -9 -217 100 -9 sandstone_wall
execute if score TNT_RUN gameStarted matches 1 run fill -215 101 -9 -217 101 -9 barrier
execute if score TNT_RUN gameStarted matches 1 run fill -218 100 38 -214 100 38 sandstone_wall
execute if score TNT_RUN gameStarted matches 1 run fill -213 101 38 -219 101 38 barrier
execute if score TNT_RUN gameStarted matches 1 run fill -215 100 43 -217 100 43 sandstone_wall
execute if score TNT_RUN gameStarted matches 1 run fill -215 101 43 -217 101 43 barrier
