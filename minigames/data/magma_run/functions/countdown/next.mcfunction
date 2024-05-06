title @a[team=magma_run] title {"score":{"name":"$magma_run.countdown","objective":"data"},"color":"gold","bold":true,"italic":true}
execute as @a[team=magma_run] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0

execute if score $magma_run.countdown data matches 1.. run schedule function magma_run:countdown/next 1s
execute if score $magma_run.countdown data matches 0 run function magma_run:start/start

scoreboard players remove $magma_run.countdown data 1
