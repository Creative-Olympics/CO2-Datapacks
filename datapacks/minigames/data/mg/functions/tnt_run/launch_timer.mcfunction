scoreboard players add TNT_RUN_START_TIMER data 1
execute if score TNT_RUN_START_TIMER data matches 1..3 run schedule function mg:tnt_run/launch_timer 1s



playsound minecraft:block.stone_button.click_on master @a[x=-216,y=100,z=17,distance=..35] ~ ~ ~ 2 2 1
execute if score TNT_RUN_START_TIMER data matches 1 run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"MAGMA RUN > ","color":"yellow"},{"text":"A game will start, please stay in the amphitheatre if you want to play.","color":"gray"}]
execute if score TNT_RUN_START_TIMER data matches 1 run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"MAGMA RUN > ","color":"yellow"},{"text":"The game will start in 3s","color":"gray"}]
execute if score TNT_RUN_START_TIMER data matches 2 run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"MAGMA RUN > ","color":"yellow"},{"text":"The game will start in 2s","color":"gray"}]
execute if score TNT_RUN_START_TIMER data matches 3 run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"MAGMA RUN > ","color":"yellow"},{"text":"The game will start in 1s","color":"gray"}]
execute if score TNT_RUN_START_TIMER data matches 4 run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"MAGMA RUN > ","color":"yellow"},{"text":"Game is started! Good luck have fun!","color":"gray"}]

execute if score TNT_RUN_START_TIMER data matches 4 run scoreboard players set TNT_RUN gameStarted 1
execute if score TNT_RUN_START_TIMER data matches 4 run scoreboard players reset TNT_RUN_START_TIMER data
