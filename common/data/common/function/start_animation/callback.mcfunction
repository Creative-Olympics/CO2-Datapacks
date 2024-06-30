# Count players in start area
scoreboard players set #result data 0
$execute as @a[distance=..$(size)] positioned ~-50 ~ ~-50 if entity @s[dx=99,dy=5,dz=99] run scoreboard players add #result data 1

# If there is not enough players, display an error message
$execute if score #result data matches ..1 run tellraw @a[distance=..$(size)] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"Not enough players to start the game :/","color":"gray"}]
$execute if score #result data matches ..1 run playsound block.sand.step master @a[distance=..$(size)] 112 82 66 2 2 1
$execute if score #result data matches ..1 run return run function $(cancel_callback)

# Otherwise, kill horses that enter in the zone and start te game
$execute as @e[type=horse,distance=..$(size)] run function lobby:horse/kill
$tellraw @a[distance=..$(size)] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game has started!","color":"gray"}]
$function $(start_callback)
