
function dropper:obstacles/remove_all

execute store result score #dropper.obstacle data run random value 0..4
execute if score #dropper.obstacle data > #dropper.round data run scoreboard players set #dropper.obstacle data 0
execute if score #dropper.round data matches 1 run scoreboard players set #dropper.obstacle data 0

execute if score #dropper.obstacle data matches 1 run place template dropper:obstacle_1 113 105 -15
execute if score #dropper.obstacle data matches 2 run place template dropper:obstacle_2 113 105 -15
execute if score #dropper.obstacle data matches 3 run place template dropper:obstacle_3 113 105 -15
execute if score #dropper.obstacle data matches 4 run place template dropper:obstacle_4 113 105 -15

execute store result score #dropper.obstacle data run random value 0..4
execute if score #dropper.obstacle data > #dropper.round data run scoreboard players set #dropper.obstacle data 0
execute if score #dropper.round data matches 2 run scoreboard players set #dropper.obstacle data 0

execute if score #dropper.obstacle data matches 1 run place template dropper:obstacle_1 113 135 -15
execute if score #dropper.obstacle data matches 2 run place template dropper:obstacle_2 113 135 -15
execute if score #dropper.obstacle data matches 3 run place template dropper:obstacle_3 113 135 -15
execute if score #dropper.obstacle data matches 4 run place template dropper:obstacle_4 113 135 -15

execute store result score #dropper.obstacle data run random value 0..4
execute if score #dropper.obstacle data > #dropper.round data run scoreboard players set #dropper.obstacle data 0
execute if score #dropper.round data matches 1 run scoreboard players set #dropper.obstacle data 0

execute if score #dropper.obstacle data matches 1 run place template dropper:obstacle_1 113 165 -15
execute if score #dropper.obstacle data matches 2 run place template dropper:obstacle_2 113 165 -15
execute if score #dropper.obstacle data matches 3 run place template dropper:obstacle_3 113 165 -15
execute if score #dropper.obstacle data matches 4 run place template dropper:obstacle_4 113 165 -15