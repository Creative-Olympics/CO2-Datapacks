scoreboard players operation #prophunt.taunt_countdown data = @s prophunt.prop_taunt_timer
scoreboard players operation #prophunt.taunt_countdown data /= 20 const
scoreboard players add #prophunt.taunt_countdown data 1

title @s times 0 2 20
title @s subtitle [{"text": "Taunt in ","color":"red"},{"score":{"name": "#prophunt.taunt_countdown","objective": "data"},"color":"yellow"},{"text": "s","color":"red"}]
title @s title {"text": " "}
