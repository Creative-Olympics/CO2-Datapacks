# Executed as & at the player

team join jump @s
title @s times 0 20 10
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0

scoreboard players set @s jump.time_left 150
scoreboard players set @s jump.timer 0
scoreboard players set @s jump.checkpoint_timer 0
scoreboard players set @s jump.step 1

stopsound @s record
playsound jump:theme record @s
tellraw @s {"text":"Music by Alexi Action","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}

clear @s

function #global:animated_title {type:"start"}