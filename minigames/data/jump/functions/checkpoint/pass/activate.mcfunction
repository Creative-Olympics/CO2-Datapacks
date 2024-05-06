# Give additionel time (and print it as a subtitle)
execute store result score #jump.time_left.seconds data store result score #jump.time_left.deciseconds data run scoreboard players operation #jump.time_left data = @e[type=marker,tag=jump.checkpoint,predicate=jump:check_step] jump.time_left
scoreboard players operation #jump.time_left.seconds data /= 20 const
scoreboard players operation #jump.time_left.deciseconds data %= 20 const
scoreboard players operation #jump.time_left.deciseconds data /= 2 const
scoreboard players operation @s jump.time_left += #jump.time_left data

execute unless score #jump.time_left data matches 0 run title @s title {"text": " "}
execute unless score #jump.time_left data matches 0 run title @s subtitle [{"text": "+","color":"gray","bold":true,"italic":true},{"score":{"name":"#jump.time_left.seconds","objective":"data"},"color":"gray","bold":true,"italic":true},{"text": ".","color":"gray","bold":true,"italic":true},{"score":{"name":"#jump.time_left.deciseconds","objective":"data"},"color":"gray","bold":true,"italic":true},{"text":" seconds","color":"gray","bold":true,"italic":true}]

# Print in tellraw the time spend to pass the checkpoint
execute store result score #jump.checkpoint_timer.seconds data run scoreboard players operation #jump.checkpoint_timer.deciseconds data = @s jump.checkpoint_timer
scoreboard players operation #jump.checkpoint_timer.seconds data /= 20 const
scoreboard players operation #jump.checkpoint_timer.deciseconds data %= 20 const
scoreboard players operation #jump.checkpoint_timer.deciseconds data /= 2 const
scoreboard players set @s jump.checkpoint_timer 0

tellraw @s [{"text": "JUMP > ","color":"dark_purple","bold":true,"italic":true},{"text":"Checkpoint ","color":"gray","bold":false,"italic":false},{"score":{"name":"@s","objective":"jump.step"},"color":"green","bold":true,"italic":true},{"text":" passed in ","color":"gray","bold":false,"italic":false},{"score":{"name":"#jump.checkpoint_timer.seconds","objective":"data"},"color":"green","bold":true,"italic":true},{"text": ".","color":"green","bold":true,"italic":true},{"score":{"name":"#jump.checkpoint_timer.deciseconds","objective":"data"},"color":"green","bold":true,"italic":true},{"text":" seconds!","color":"gray","bold":false,"italic":false}]

scoreboard players add @s jump.step 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
advancement grant @s only jump:update_hotbar
