
execute store result score #jump.checkpoint_timer.seconds data store result score #jump.checkpoint_timer.first_decimal data run scoreboard players get @s jump.checkpoint_timer
scoreboard players operation #jump.checkpoint_timer.seconds data /= 20 const
scoreboard players operation #jump.checkpoint_timer.first_decimal data %= 20 const
scoreboard players operation #jump.checkpoint_timer.first_decimal data /= 2 const

tellraw @s [{"text": "JUMP > ","color":"dark_purple","bold":true,"italic":true},{"text":"Checkpoint ","color":"gray","bold":false,"italic":false},{"score":{"name":"#checkpoint","objective":"jump.step"},"color":"green","bold":true,"italic":true},{"text":" passed in ","color":"gray","bold":false,"italic":false},{"score":{"name":"#jump.checkpoint_timer.seconds","objective":"data"},"color":"green","bold":true,"italic":true},{"text": ".","color":"green","bold":true,"italic":true},{"score":{"name":"#jump.checkpoint_timer.first_decimal","objective":"data"},"color":"green","bold":true,"italic":true},{"text":" seconds!","color":"gray","bold":false,"italic":false}]