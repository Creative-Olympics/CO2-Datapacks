scoreboard players add THIMBLE_START_TIMER data 1
execute if score THIMBLE_START_TIMER data matches 1..3 run schedule function thimble:game/launch_timer 1s

execute if score THIMBLE_START_TIMER data matches 1 run function thimble:player/reset_all

function thimble:map/setup

execute if score THIMBLE_START_TIMER data matches 1 run summon minecraft:armor_stand 129 99 15 {Tags:["area5","thimble.area"],NoGravity:1,Maker:1,Invisible:1}

playsound minecraft:block.stone_button.click_on master @a[x=129,y=98,z=19,distance=..35] ~ ~ ~ 2 2 1
execute if score THIMBLE_START_TIMER data matches 1 run tellraw @a[x=129,y=98,z=19,distance=..35] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"A game will start, please stay in the zone if you want to play.","color":"gray"}]
execute if score THIMBLE_START_TIMER data matches 1 run tellraw @a[x=129,y=98,z=19,distance=..35] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"The game will start in 3s","color":"gray"}]
execute if score THIMBLE_START_TIMER data matches 2 run tellraw @a[x=129,y=98,z=19,distance=..35] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"The game will start in 2s","color":"gray"}]
execute if score THIMBLE_START_TIMER data matches 3 run tellraw @a[x=129,y=98,z=19,distance=..35] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"The game will start in 1s","color":"gray"}]
execute if score THIMBLE_START_TIMER data matches 4 run tellraw @a[x=129,y=98,z=19,distance=..35] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"Game is started! Good luck have fun!","color":"gray"}]

execute if score THIMBLE_START_TIMER data matches 4 run scoreboard players set THIMBLE gameStarted 1
execute if score THIMBLE_START_TIMER data matches 4 at @e[tag=thimble.area] run tag @a[distance=..5,gamemode=!spectator] add thimble.inGame
execute if score THIMBLE_START_TIMER data matches 4 as @a[tag=thimble.inGame] run function thimble:get_order
execute if score THIMBLE_START_TIMER data matches 4 run scoreboard players set @a[tag=thimble.inGame] thimble.lives 1
execute if score THIMBLE_START_TIMER data matches 4 run tp @a[tag=thimble.inGame] 140.95 87 30.3 124.5 28.5

execute if score THIMBLE_START_TIMER data matches 4 run kill @e[tag=thimble.area,type=!player]
execute if score THIMBLE_START_TIMER data matches 4 run scoreboard players reset THIMBLE_START_TIMER data
