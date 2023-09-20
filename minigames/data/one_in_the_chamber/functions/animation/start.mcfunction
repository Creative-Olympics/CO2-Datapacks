
# Iinit -----------------------------------------------------------------------

# Summon marker entity
execute if score #OITC:start_anim data matches 1 unless entity @e[type=marker,tag=OITC_start_anim] run summon minecraft:marker -183.5 97.5 -96.5 {Tags:["OITC_start_anim"]}

# Sound effect
execute if score #OITC:start_anim data matches 1 run playsound minecraft:block.stone_button.click_on master @a[x=-184,y=97,z=-97,distance=..35] ~ ~ ~ 2 2 1

# Animation -------------------------------------------------------------------

# Titles
execute if score #OITC:start_anim data matches 1 run tellraw @a[x=-184,y=97,z=-97,distance=..35] ["",{"text":"OITC > ","color":"red"},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
execute if score #OITC:start_anim data matches 40 run tellraw @a[x=-184,y=97,z=-97,distance=..35] ["",{"text":"OITC > ","color":"red"},{"text":"The game will start in 3s","color":"gray"}]
execute if score #OITC:start_anim data matches 60 run tellraw @a[x=-184,y=97,z=-97,distance=..35] ["",{"text":"OITC > ","color":"red"},{"text":"The game will start in 2s","color":"gray"}]
execute if score #OITC:start_anim data matches 80 run tellraw @a[x=-184,y=97,z=-97,distance=..35] ["",{"text":"OITC > ","color":"red"},{"text":"The game will start in 1s","color":"gray"}]
execute if score #OITC:start_anim data matches 100 run tellraw @a[x=-184,y=97,z=-97,distance=..35] ["",{"text":"OITC > ","color":"red"},{"text":"Game is started! Good luck have fun!","color":"gray"}]

# Sound effect
execute if score #OITC:start_anim data matches 40 run playsound minecraft:entity.experience_orb.pickup master @a[x=-184,y=97,z=-97,distance=..35] ~ ~ ~ 2 2 1
execute if score #OITC:start_anim data matches 60 run playsound minecraft:entity.experience_orb.pickup master @a[x=-184,y=97,z=-97,distance=..35] ~ ~ ~ 2 2 1
execute if score #OITC:start_anim data matches 80 run playsound minecraft:entity.experience_orb.pickup master @a[x=-184,y=97,z=-97,distance=..35] ~ ~ ~ 2 2 1

# Particle circle
execute as @e[type=marker,tag=OITC_start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^5 0.1 0.1 0.1 0.1 10 force
execute as @e[type=marker,tag=OITC_start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^-5 0.1 0.1 0.1 0.1 10 force
execute as @e[type=marker,tag=OITC_start_anim] at @s run tp @s ~ ~ ~ ~3 ~

# Increment anim frame
scoreboard players add #OITC:start_anim data 1

# End of animation ------------------------------------------------------------

# Start game
execute if score #OITC:start_anim data matches 100 run team join oitc @a[x=-184,y=97,z=-97,distance=..5.5]
execute if score #OITC:start_anim data matches 100 run function one_in_the_chamber:start

# Clear entity
execute if score #OITC:start_anim data matches 100.. run kill @e[type=marker,tag=OITC_start_anim]

# Reset animation
execute if score #OITC:start_anim data matches 100.. run scoreboard players set #OITC:start_anim data 0