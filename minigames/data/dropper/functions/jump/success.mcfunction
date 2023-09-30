tag @s add dropper.jump_complete
tp @s ~ ~2 ~
execute as @a[team=dropper] at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0
tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"selector":"@s","bold":false,"italic":false},{"text":" succeeded in his jump","color":"green","bold":false,"italic":false}]

function dropper:jump/set_wool