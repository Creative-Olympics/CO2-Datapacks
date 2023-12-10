

execute at @a[team=magma_run] as @e[tag=lobby.horse,distance=..3] run function lobby:horse/kill

execute if score $magma_run.post_start_timer data matches ..0 run function #magma_run:destroy_sand
execute if score $magma_run.post_start_timer data matches ..0 run function #magma_run:fall
function #magma_run:stop

execute if score $magma_run.post_start_timer data matches 0.. run function magma_run:start/post_start