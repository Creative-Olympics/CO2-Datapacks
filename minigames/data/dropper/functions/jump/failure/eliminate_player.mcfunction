execute as @a[team=dropper] at @s run playsound block.stone_button.click_off master @s ~ ~ ~ 1 2 0

function #lib:animated_title {type:"defeat"}

team leave @s
stopsound @s record
tag @s remove dropper.jump_complete
tag @s remove dropper.has_jumped
