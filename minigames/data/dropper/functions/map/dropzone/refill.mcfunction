execute store result score #dropper.zone.refill data if entity @a[team=dropper]
scoreboard players remove #dropper.zone.refill data 1

execute if score #dropper.zone.refill data matches 1.. positioned 119 80 -9 summon minecraft:marker run function dropper:map/dropzone/refill_loop
