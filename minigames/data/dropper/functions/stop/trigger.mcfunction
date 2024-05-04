execute store result score #dropper.players data if entity @a[team=dropper]
execute if score #dropper.players data matches ..1 run function dropper:stop/stop
