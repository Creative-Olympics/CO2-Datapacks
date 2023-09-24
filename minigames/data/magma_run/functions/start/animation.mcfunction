
# Iinit -----------------------------------------------------------------------

# Summon marker entity
execute if score #magma_run:start_anim data matches 1 unless entity @e[tag=magma_run.start_anim] run summon minecraft:marker -215.5 100.5 17.5 {Tags:["magma_run.start_anim"]}


setblock 112 82 66 air destroy
setblock 111 82 66 air destroy

# Sound effect
execute if score #magma_run:start_anim data matches 1 run playsound minecraft:block.stone_button.click_on master @a[x=-215.5,y=100.5,z=17.5,distance=..35] ~ ~ ~ 2 2 1

# Animation -------------------------------------------------------------------

# Titles
execute if score #magma_run:start_anim data matches 1 run tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..35] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
execute if score #magma_run:start_anim data matches 40 run tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..35] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"text":"The game will start in 3s","color":"gray"}]
execute if score #magma_run:start_anim data matches 60 run tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..35] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"text":"The game will start in 2s","color":"gray"}]
execute if score #magma_run:start_anim data matches 80 run tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..35] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"text":"The game will start in 1s","color":"gray"}]

# Sound effect
execute if score #magma_run:start_anim data matches 40 run playsound minecraft:entity.experience_orb.pickup master @a[x=-215.5,y=100.5,z=17.5,distance=..35] ~ ~ ~ 2 2 1
execute if score #magma_run:start_anim data matches 60 run playsound minecraft:entity.experience_orb.pickup master @a[x=-215.5,y=100.5,z=17.5,distance=..35] ~ ~ ~ 2 2 1
execute if score #magma_run:start_anim data matches 80 run playsound minecraft:entity.experience_orb.pickup master @a[x=-215.5,y=100.5,z=17.5,distance=..35] ~ ~ ~ 2 2 1

# Particle circle
execute as @e[tag=magma_run.start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^20 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=magma_run.start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^-20 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=magma_run.start_anim] at @s run particle minecraft:totem_of_undying ^20 ^ ^ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=magma_run.start_anim] at @s run particle minecraft:totem_of_undying ^-20 ^ ^ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=magma_run.start_anim] at @s run tp @s ~ ~ ~ ~3 ~

# Increment anim frame
scoreboard players add #magma_run:start_anim data 1

# End of animation ------------------------------------------------------------

# Start game
scoreboard players set #magma_run.player_count data 0
execute as @a[x=-215.5,y=100.5,z=17.5,distance=..21] run scoreboard players add #magma_run.player_count data 1
execute if score #magma_run:start_anim data matches 100 if score #magma_run.player_count data matches 2.. run function magma_run:start/start
execute if score #magma_run:start_anim data matches 100 unless score #magma_run.player_count data matches 2.. at @e[tag=magma_run.start_anim] run tellraw @a[distance=..21] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"text":"Not enough players to start the game :/","color":"gray"}]
execute if score #magma_run:start_anim data matches 100 unless score #magma_run.player_count data matches 2.. at @e[tag=magma_run.start_anim] run playsound block.sand.step master @a[distance=..21] ~ ~ ~ 2 2 1
execute if score #magma_run:start_anim data matches 100 unless score #magma_run.player_count data matches 2.. run function magma_run:start/place_starting_signs

# Clear entity
execute if score #magma_run:start_anim data matches 100.. run kill @e[type=marker,tag=magma_run.start_anim]

# Reset animation
execute if score #magma_run:start_anim data matches 100.. run scoreboard players set #magma_run:start_anim data 0

# Continue animation
execute if score #magma_run:start_anim data matches 1.. run schedule function magma_run:start/animation 1t