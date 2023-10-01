
function dropper:obstacles/remove_all

execute if score #dropper.timer_before_jump_reset data matches 66 run execute as @a[team=dropper] at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0


execute store result score #dropper.obstacle data run random value 0..4
execute if score #dropper.obstacle data > #dropper.round data run scoreboard players set #dropper.obstacle data 0
execute if score #dropper.round data matches 1 run scoreboard players set #dropper.obstacle data 0

execute if score #dropper.obstacle data matches 0 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 1: Nothing","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 1 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 1: Cross-shaped sail","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 2 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 1: Grid","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 3 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 1: Steering Wheel","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 4 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 1: Round-shaped sail","color":"yellow","bold":false,"italic":false}]

execute if score #dropper.obstacle data matches 1 run place template dropper:obstacle_1 113 165 -15
execute if score #dropper.obstacle data matches 2 run place template dropper:obstacle_2 113 165 -15
execute if score #dropper.obstacle data matches 3 run place template dropper:obstacle_3 113 165 -15
execute if score #dropper.obstacle data matches 4 run place template dropper:obstacle_4 113 165 -15

execute store result score #dropper.obstacle data run random value 0..4
execute if score #dropper.obstacle data > #dropper.round data run scoreboard players set #dropper.obstacle data 0
execute if score #dropper.round data matches 2 run scoreboard players set #dropper.obstacle data 0

execute if score #dropper.obstacle data matches 0 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 2: Nothing","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 1 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 2: Cross-shaped sail","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 2 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 2: Grid","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 3 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 2: Steering Wheel","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 4 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 2: Round-shaped sail","color":"yellow","bold":false,"italic":false}]

execute if score #dropper.obstacle data matches 1 run place template dropper:obstacle_1 113 135 -15
execute if score #dropper.obstacle data matches 2 run place template dropper:obstacle_2 113 135 -15
execute if score #dropper.obstacle data matches 3 run place template dropper:obstacle_3 113 135 -15
execute if score #dropper.obstacle data matches 4 run place template dropper:obstacle_4 113 135 -15

execute store result score #dropper.obstacle data run random value 0..4
execute if score #dropper.obstacle data > #dropper.round data run scoreboard players set #dropper.obstacle data 0
execute if score #dropper.round data matches 1 run scoreboard players set #dropper.obstacle data 0

execute if score #dropper.obstacle data matches 0 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 3: Nothing\n","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 1 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 3: Cross-shaped sail\n","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 2 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 3: Grid\n","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 3 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 3: Steering Wheel\n","color":"yellow","bold":false,"italic":false}]
execute if score #dropper.obstacle data matches 4 run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"text":" Obstacle 3: Round-shaped sail\n","color":"yellow","bold":false,"italic":false}]

execute if score #dropper.obstacle data matches 1 run place template dropper:obstacle_1 113 105 -15
execute if score #dropper.obstacle data matches 2 run place template dropper:obstacle_2 113 105 -15
execute if score #dropper.obstacle data matches 3 run place template dropper:obstacle_3 113 105 -15
execute if score #dropper.obstacle data matches 4 run place template dropper:obstacle_4 113 105 -15