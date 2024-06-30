# Executed as & at the player

team join jump @s
function #common:animated_title {type:"start"}

scoreboard players set @s jump.step 1
scoreboard players set @s jump.timer 0
scoreboard players set @s jump.time_left 160
scoreboard players set @s jump.checkpoint_timer 0
advancement grant @s only jump:update_hotbar

stopsound @s record
playsound jump:theme record @s
tellraw @s {"text":"Music by Alexi Action","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}
