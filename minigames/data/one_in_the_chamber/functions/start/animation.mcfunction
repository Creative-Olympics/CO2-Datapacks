
function #lib:start_animation {\
    id: "one_in_the_chamber",\
    minigame: "OITC",\
    color: "red",\
    x: -183.5,\
    y: 97.5,\
    z: -96.5,\
    size: 5,\
    start_callback: "one_in_the_chamber:start/start",\
    cancel_callback: "one_in_the_chamber:start/cancel"\
}


# Init -----------------------------------------------------------------------

# Summon marker entity
execute unless entity @e[tag=one_in_the_chamber.start_anim] run summon minecraft:marker -183.5 97.5 -96.5 {Tags:["one_in_the_chamber.start_anim"]}

function one_in_the_chamber:map/remove_start_sign

# Sound effect
execute if score #one_in_the_chamber:start_anim data matches 1 at @e[tag=one_in_the_chamber.start_anim] run playsound minecraft:block.stone_button.click_on master @a[distance=..35] ~ ~ ~ 2 2 1

# Animation -------------------------------------------------------------------

# Titles
execute if score #one_in_the_chamber:start_anim data matches 1 at @e[tag=one_in_the_chamber.start_anim] run tellraw @a[distance=..35] ["",{"text":"OITC > ","color":"blue","bold":true,"italic":true},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
execute if score #one_in_the_chamber:start_anim data matches 40 at @e[tag=one_in_the_chamber.start_anim] run tellraw @a[distance=..35] ["",{"text":"OITC > ","color":"blue","bold":true,"italic":true},{"text":"The game will start in 3s","color":"gray"}]
execute if score #one_in_the_chamber:start_anim data matches 60 at @e[tag=one_in_the_chamber.start_anim] run tellraw @a[distance=..35] ["",{"text":"OITC > ","color":"blue","bold":true,"italic":true},{"text":"The game will start in 2s","color":"gray"}]
execute if score #one_in_the_chamber:start_anim data matches 80 at @e[tag=one_in_the_chamber.start_anim] run tellraw @a[distance=..35] ["",{"text":"OITC > ","color":"blue","bold":true,"italic":true},{"text":"The game will start in 1s","color":"gray"}]
execute if score #one_in_the_chamber:start_anim data matches 100 at @e[tag=one_in_the_chamber.start_anim] run tellraw @a[distance=..35] ["",{"text":"OITC > ","color":"blue","bold":true,"italic":true},{"text":"Game is started! Good luck have fun!","color":"gray"}]

# Sound effect
execute if score #one_in_the_chamber:start_anim data matches 40 run playsound minecraft:entity.experience_orb.pickup master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1
execute if score #one_in_the_chamber:start_anim data matches 60 run playsound minecraft:entity.experience_orb.pickup master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1
execute if score #one_in_the_chamber:start_anim data matches 80 run playsound minecraft:entity.experience_orb.pickup master @a[x=112,y=82,z=66,distance=..35] ~ ~ ~ 2 2 1

# Particle circle
execute as @e[tag=one_in_the_chamber.start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^5 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=one_in_the_chamber.start_anim] at @s run particle minecraft:totem_of_undying ^ ^ ^-5 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=one_in_the_chamber.start_anim] at @s run tp @s ~ ~ ~ ~3 ~

# Increment anim frame
scoreboard players add #one_in_the_chamber:start_anim data 1

# End of animation ------------------------------------------------------------

# Start game
scoreboard players set #one_in_the_chamber.player_count data 0
execute as @a[x=112,y=82,z=66,distance=..5.5] run scoreboard players add #one_in_the_chamber.player_count data 1
execute if score #one_in_the_chamber:start_anim data matches 100 if score #one_in_the_chamber.player_count data matches 2.. run function one_in_the_chamber:start/start
execute if score #one_in_the_chamber:start_anim data matches 100 unless score #one_in_the_chamber.player_count data matches 2.. run tellraw @a[x=112,y=82,z=66,distance=..5.5] ["",{"text":"OITC > ","color":"blue","bold":true,"italic":true},{"text":"Not enough players to start the game :/","color":"gray"}]
execute if score #one_in_the_chamber:start_anim data matches 100 unless score #one_in_the_chamber.player_count data matches 2.. run playsound block.sand.step master @a[x=112,y=82,z=66,distance=..5.5] 112 82 66 2 2 1
execute if score #one_in_the_chamber:start_anim data matches 100 unless score #one_in_the_chamber.player_count data matches 2.. run function one_in_the_chamber:start/place_starting_sign

# Clear entity
execute if score #one_in_the_chamber:start_anim data matches 100.. run kill @e[type=marker,tag=one_in_the_chamber.start_anim]

# Reset animation
execute if score #one_in_the_chamber:start_anim data matches 100.. run scoreboard players set #one_in_the_chamber:start_anim data 0

# Continue animation
execute if score #one_in_the_chamber:start_anim data matches 1.. run schedule function one_in_the_chamber:start/animation 1t