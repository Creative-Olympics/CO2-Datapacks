
scoreboard players remove $magma_run.post_start_timer data 1

scoreboard players operation $magma_run.post_start_timer.seconds data = $magma_run.post_start_timer data
scoreboard players operation $magma_run.post_start_timer.seconds data /= 20 const
scoreboard players add $magma_run.post_start_timer.seconds data 1


execute if score $magma_run.post_start_timer data matches 0..60 run title @a[team=magma_run] title {"score":{"name":"$magma_run.post_start_timer.seconds","objective":"data"},"color":"gold","bold":true,"italic":true}

execute if score $magma_run.post_start_timer data matches 0 run title @a[team=magma_run] title {"text":""}
execute if score $magma_run.post_start_timer data matches 0 run title @a[team=magma_run] subtitle {"text":""}

execute if score $magma_run.post_start_timer data matches 60 as @a[team=magma_run] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute if score $magma_run.post_start_timer data matches 40 as @a[team=magma_run] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute if score $magma_run.post_start_timer data matches 20 as @a[team=magma_run] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0
execute if score $magma_run.post_start_timer data matches 0 as @a[team=magma_run] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 0