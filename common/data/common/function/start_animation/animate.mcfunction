# Increment anim frame
scoreboard players add @s start_animation.frame 1
scoreboard players set #common.start_animation.animate data 1

# Particle circle
$particle totem_of_undying ^ ^ ^$(size) 0.1 0.1 0.1 0.1 10 force
$particle totem_of_undying ^ ^ ^-$(size) 0.1 0.1 0.1 0.1 10 force
tp @s ~ ~ ~ ~3 ~

# Titles
$execute if score @s start_animation.frame matches 1 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
$execute if score @s start_animation.frame matches 40 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game will start in 3s","color":"gray"}]
$execute if score @s start_animation.frame matches 60 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game will start in 2s","color":"gray"}]
$execute if score @s start_animation.frame matches 80 run tellraw @a[distance=..35] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game will start in 1s","color":"gray"}]

# Sound effect
execute if score @s start_animation.frame matches 1 run playsound block.stone_button.click_on master @a[distance=..35] ~ ~ ~ 2 2 1
execute if score @s start_animation.frame matches 40 run playsound entity.experience_orb.pickup master @a[distance=..35] ~ ~ ~ 2 2 1
execute if score @s start_animation.frame matches 60 run playsound entity.experience_orb.pickup master @a[distance=..35] ~ ~ ~ 2 2 1
execute if score @s start_animation.frame matches 80 run playsound entity.experience_orb.pickup master @a[distance=..35] ~ ~ ~ 2 2 1

# End of animation ------------------------------------------------------------

# Run callbacks then clear the entity
execute if score @s start_animation.frame matches 100 run function common:start_animation/callback with entity @s data.start_animation
execute if score @s start_animation.frame matches 100.. run kill @s
