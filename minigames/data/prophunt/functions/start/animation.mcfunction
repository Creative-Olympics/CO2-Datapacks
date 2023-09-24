
# Iinit -----------------------------------------------------------------------

# Summon marker entity
execute if score #prophunt:start_anim data matches 1 unless entity @e[tag=prophunt.start_anim] run summon minecraft:marker 112.5 82.5 66.5 {Tags:["prophunt.start_anim"]}


setblock 112 82 66 air destroy
setblock 111 82 66 air destroy

# Sound effect
execute if score #prophunt:start_anim data matches 1 run playsound minecraft:block.stone_button.click_on master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1

# Animation -------------------------------------------------------------------

# Titles
execute if score #prophunt:start_anim data matches 1 run tellraw @a[x=112,y=82,z=66,distance=..35] ["",{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
execute if score #prophunt:start_anim data matches 40 run tellraw @a[x=112,y=82,z=66,distance=..35] ["",{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"text":"The game will start in 3s","color":"gray"}]
execute if score #prophunt:start_anim data matches 60 run tellraw @a[x=112,y=82,z=66,distance=..35] ["",{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"text":"The game will start in 2s","color":"gray"}]
execute if score #prophunt:start_anim data matches 80 run tellraw @a[x=112,y=82,z=66,distance=..35] ["",{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"text":"The game will start in 1s","color":"gray"}]
execute if score #prophunt:start_anim data matches 100 run tellraw @a[x=112,y=82,z=66,distance=..35] ["",{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"text":"Game is started! Good luck have fun!","color":"gray"}]

# Sound effect
execute if score #prophunt:start_anim data matches 40 run playsound minecraft:entity.experience_orb.pickup master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1
execute if score #prophunt:start_anim data matches 60 run playsound minecraft:entity.experience_orb.pickup master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1
execute if score #prophunt:start_anim data matches 80 run playsound minecraft:entity.experience_orb.pickup master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1

# Particle circle
execute as @e[tag=prophunt.start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^5 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=prophunt.start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^-5 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=prophunt.start_anim] at @s run tp @s ~ ~ ~ ~3 ~

# Increment anim frame
scoreboard players add #prophunt:start_anim data 1

# End of animation ------------------------------------------------------------

# Start game
scoreboard players set #prophunt.player_count data 0
execute as @a[x=112,y=82,z=66,distance=..5.5] run scoreboard players add #prophunt.player_count data 1
execute if score #prophunt:start_anim data matches 100 if score #prophunt.player_count data matches 2.. run function prophunt:start/start
execute if score #prophunt:start_anim data matches 100 unless score #prophunt.player_count data matches 2.. run tellraw @a[x=112,y=82,z=66,distance=..5.5] ["",{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"text":"Not enough players to start the game :/","color":"gray"}]
execute if score #prophunt:start_anim data matches 100 unless score #prophunt.player_count data matches 2.. run playsound block.sand.step master @a[x=112,y=82,z=66,distance=..5.5] 112 82 66 2 2 1
execute if score #prophunt:start_anim data matches 100 unless score #prophunt.player_count data matches 2.. run function prophunt:start/place_starting_sign

# Clear entity
execute if score #prophunt:start_anim data matches 100.. run kill @e[type=marker,tag=prophunt.start_anim]

# Reset animation
execute if score #prophunt:start_anim data matches 100.. run scoreboard players set #prophunt:start_anim data 0

# Continue animation
execute if score #prophunt:start_anim data matches 1.. run schedule function prophunt:start/animation 1t