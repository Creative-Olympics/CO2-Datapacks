
scoreboard players set #magma_run.player_count data 0
execute as @a[team=magma_run] run scoreboard players add #magma_run.player_count data 1

execute if score #magma_run.player_count data matches ..1 run function magma_run:stop/stop