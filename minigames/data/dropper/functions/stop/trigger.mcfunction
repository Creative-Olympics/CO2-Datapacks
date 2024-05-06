execute store result score #result data if entity @a[team=dropper]
execute if score #result data matches ..1 run function dropper:stop/stop
