scoreboard players operation #dropper.timer.seconds data /= 20 const

execute if score $dropper.timer data matches 101.. run title @a[team=dropper,predicate=dropper:on_diving_board] actionbar [{"text":"You have ","color":"white"},{"score":{"name":"#dropper.timer.seconds","objective":"data"},"color":"green"},"s to jump"]
execute if score $dropper.timer data matches ..100 run title @a[team=dropper,predicate=dropper:on_diving_board] actionbar [{"text":"You have ","color":"red","bold":true,"italic":true},{"score":{"name":"#dropper.timer.seconds","objective":"data"},"color":"yellow"},"s to jump"]
execute if score $dropper.timer data matches ..100 as @a[team=dropper,predicate=dropper:on_diving_board] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
