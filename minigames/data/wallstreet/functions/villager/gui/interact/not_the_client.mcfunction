
playsound entity.villager.no master @s ~ ~ ~ 1 1 0
title @s times 0 40 20
title @s title {"text":" ","color":"red"}
execute store result score #random ctx run random value 0..3
execute if score #random ctx matches 0 run title @s subtitle {"text":"Go disturb someone else!","color":"red","bold":true,"italic":true}
execute if score #random ctx matches 1 run title @s subtitle {"text":"I already have a client...","color":"red","bold":true,"italic":true}
execute if score #random ctx matches 2 run title @s subtitle {"text":"Wait for your turn.","color":"red","bold":true,"italic":true}
execute if score #random ctx matches 3 run title @s subtitle {"text":"Chhhht! I'm busy.","color":"red","bold":true,"italic":true}