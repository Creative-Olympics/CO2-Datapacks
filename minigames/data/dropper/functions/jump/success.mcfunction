tp @s ~ ~2 ~
tag @s add dropper.jump_complete

tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"selector":"@s","bold":false,"italic":false},{"text":" succeeded in his jump","color":"green","bold":false,"italic":false}]
execute as @a[team=dropper] at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0

execute store result score #dropper.jump.wool data run random value 0..6
execute if score #dropper.jump.wool data matches 0 run setblock ~ 80 ~ black_wool
execute if score #dropper.jump.wool data matches 1 run setblock ~ 80 ~ white_wool
execute if score #dropper.jump.wool data matches 2 run setblock ~ 80 ~ red_wool
execute if score #dropper.jump.wool data matches 3 run setblock ~ 80 ~ lime_wool
execute if score #dropper.jump.wool data matches 4 run setblock ~ 80 ~ light_blue_wool
execute if score #dropper.jump.wool data matches 5 run setblock ~ 80 ~ magenta_wool
execute if score #dropper.jump.wool data matches 6 run setblock ~ 80 ~ yellow_wool
