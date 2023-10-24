# Increment anim frame
$scoreboard players add #lib.start_animation.$(id) data 1

# Titles
$execute if score #lib.start_animation.$(id) data matches 1 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
$execute if score #lib.start_animation.$(id) data matches 40 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game will start in 3s","color":"gray"}]
$execute if score #lib.start_animation.$(id) data matches 60 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game will start in 2s","color":"gray"}]
$execute if score #lib.start_animation.$(id) data matches 80 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game will start in 1s","color":"gray"}]

# Sound effect
$execute if score #lib.start_animation.$(id) data matches 1 run playsound block.stone_button.click_on master @a[distance=..35] ~ ~ ~ 2 2 1
$execute if score #lib.start_animation.$(id) data matches 40 run playsound entity.experience_orb.pickup master @a[distance=..35] ~ ~ ~ 2 2 1
$execute if score #lib.start_animation.$(id) data matches 60 run playsound entity.experience_orb.pickup master @a[distance=..35] ~ ~ ~ 2 2 1
$execute if score #lib.start_animation.$(id) data matches 80 run playsound entity.experience_orb.pickup master @a[distance=..35] ~ ~ ~ 2 2 1

# Kill horses that enter in the zone
$execute as @e[type=horse,distance=..$(size)] run function lobby:horse/kill

# Particle circle
$particle totem_of_undying ^ ^ ^$(size) 0.1 0.1 0.1 0.1 10 force
$particle totem_of_undying ^ ^ ^-$(size) 0.1 0.1 0.1 0.1 10 force
tp @s ~ ~ ~ ~3 ~

# End of animation ------------------------------------------------------------

# Start
$execute if score #lib.start_animation.$(id) data matches 100 run function lib:start_animation/start with entity @s data.start_animation

# Clear entity
$execute if score #lib.start_animation.$(id) data matches 100.. run kill @e[type=marker,tag=lib.start_animation.$(id)]

# Reset animation
$execute if score #lib.start_animation.$(id) data matches 100.. run scoreboard players set #lib.start_animation.$(id) data 0