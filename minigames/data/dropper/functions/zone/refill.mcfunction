
scoreboard players set #dropper.zone.refill data 0
execute as @a[team=dropper] run scoreboard players add #dropper.zone.refill data 1
scoreboard players remove #dropper.zone.refill data 1

execute if score #dropper.zone.refill data matches 1.. run function dropper:zone/refill-loop