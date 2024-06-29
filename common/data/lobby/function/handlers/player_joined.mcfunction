advancement revoke @s only lobby:on_join

gamemode adventure @s
stopsound @s record
team join lobby @s
effect clear @s
clear @s

effect give @s saturation infinite 255 true
effect give @s resistance infinite 255 true
effect give @s weakness 1000000 255 true
effect give @s resistance infinite 255 true
effect give @s minecraft:instant_health 1 100

attribute @s minecraft:generic.jump_strength modifier remove prophunt:stunned
attribute @s minecraft:generic.movement_speed modifier remove prophunt:stunned
attribute @s minecraft:player.entity_interaction_range modifier remove prophunt:stunned

execute if score @s leave_game matches 1.. run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;365568,5181439,16711680,16772874,0]}]}}}}
execute if score @s leave_game matches 1.. run function lib:animated_title/reset
scoreboard players reset @s leave_game
