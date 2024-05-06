execute at @a[team=magma_run] as @e[tag=lobby.horse,distance=..3] run function lobby:horse/kill
execute as @a[team=magma_run,predicate=magma_run:stepping_on_sand] at @s run function magma_run:ground/destroy
