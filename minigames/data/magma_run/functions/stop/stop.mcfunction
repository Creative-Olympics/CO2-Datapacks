
tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..33] ["",{"text":"\nMAGMA RUN > ","color":"gold","bold":true,"italic":true},{"selector":"@a[team=magma_run]"},{"text":" won the game!\n","color":"gray"}]

execute as @a[team=magma_run] run function #lib:animated_title {type:"victory"}
kill @e[tag=magma_run.break]
execute as @a[team=magma_run] run function #magma_run:reset_player
function #magma_run:reset_map
scoreboard players set $magma_run.game_started data 0
