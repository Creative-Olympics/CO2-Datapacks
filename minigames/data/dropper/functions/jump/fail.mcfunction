
execute as @a[team=dropper] at @s run playsound block.stone_button.click_off master @s ~ ~ ~ 1 2 0

function #global:animated_title {type:"defeat"}

tag @s add dropper.jump_complete

function dropper:stop/reset_player