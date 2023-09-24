# Executed as & at the player

team join jump @s
title @s times 0 20 10
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0

scoreboard players set @s jump.time_left 200
scoreboard players set @s jump.timer 0
scoreboard players set @s jump.step 1

stopsound @s music
playsound jump:theme music @s
tellraw @s {"text":"Music by Alexi Action from Pixabay"}

clear @s

function #global:animated_title {type:"start"}