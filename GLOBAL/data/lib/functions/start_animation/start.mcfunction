
# Count players in start area
scoreboard players set #lib.start_animation.player_count data 0
$execute as @a[distance=..$(size)] run scoreboard players add #lib.start_animation.player_count data 1

# If there is enough players, start te game
$execute if score #lib.start_animation.player_count data matches 2.. run tellraw @a[distance=..$(size)] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"The game has started!","color":"gray"}]
$execute if score #lib.start_animation.player_count data matches 2.. run function $(start_callback)

# Otherwise, display an error message
$execute unless score #lib.start_animation.player_count data matches 2.. run tellraw @a[distance=..$(size)] ["",{"text":"$(minigame) > ","color":"$(color)","bold":true,"italic":true},{"text":"Not enough players to start the game :/","color":"gray"}]
$execute unless score #lib.start_animation.player_count data matches 2.. run playsound block.sand.step master @a[distance=..$(size)] 112 82 66 2 2 1
$execute unless score #lib.start_animation.player_count data matches 2.. run function $(cancel_callback)