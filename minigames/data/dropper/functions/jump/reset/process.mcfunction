scoreboard players add #dropper.timer_before_jump_reset data 1

execute if score #dropper.timer_before_jump_reset data matches 1 as @a[team=dropper] at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0
execute if score #dropper.timer_before_jump_reset data matches 1 run tellraw @a[team=dropper] [{"text":"\nDROPPER > ","color":"green","bold":true,"italic":true},{"text":" Round complete!\n","color":"gray","bold":false,"italic":false}]

execute if score #dropper.timer_before_jump_reset data matches 33 run function dropper:map/dropzone/refill

execute if score #dropper.timer_before_jump_reset data matches 66 run scoreboard players add #dropper.round data 1
execute if score #dropper.timer_before_jump_reset data matches 66 run function dropper:map/obstacles/generate

execute if score #dropper.timer_before_jump_reset data matches 100.. run function dropper:jump/reset/round
