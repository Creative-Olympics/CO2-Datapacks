tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"selector":"@s","color":"gray","bold":false,"italic":false},{"text":" has jumped!","color":"gray","bold":false,"italic":false}]
execute as @a[team=dropper] at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0
tag @s add dropper.has_jumped
