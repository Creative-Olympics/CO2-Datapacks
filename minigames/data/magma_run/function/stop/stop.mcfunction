scoreboard players set $magma_run.game_started data 0

execute as @a[team=magma_run] run function #common:animated_title {type:"victory"}
execute if entity @a[team=magma_run] run tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..33] ["",{"text":"\nMAGMA RUN > ","color":"gold","bold":true,"italic":true},{"selector":"@a[team=magma_run]"},{"text":" won the game!\n","color":"gray"}]

execute as @a[team=magma_run] run function #common:join_lobby
