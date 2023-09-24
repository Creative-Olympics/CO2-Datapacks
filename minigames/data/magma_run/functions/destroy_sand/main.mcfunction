

execute as @a[team=magma_run] at @s positioned ~0.3 ~-0.1 ~0.3 align xyz unless entity @e[tag=magma_run.break,distance=..0.5] if block ~ ~ ~ sand run summon marker ~ ~ ~ {Tags:["magma_run.break"]}
execute as @a[team=magma_run] at @s positioned ~0.3 ~-0.1 ~-0.3 align xyz unless entity @e[tag=magma_run.break,distance=..0.5] if block ~ ~ ~ sand run summon marker ~ ~ ~ {Tags:["magma_run.break"]}
execute as @a[team=magma_run] at @s positioned ~-0.3 ~-0.1 ~0.3 align xyz unless entity @e[tag=magma_run.break,distance=..0.5] if block ~ ~ ~ sand run summon marker ~ ~ ~ {Tags:["magma_run.break"]}
execute as @a[team=magma_run] at @s positioned ~-0.3 ~-0.1 ~-0.3 align xyz unless entity @e[tag=magma_run.break,distance=..0.5] if block ~ ~ ~ sand run summon marker ~ ~ ~ {Tags:["magma_run.break"]}

execute at @e[tag=magma_run.break,scores={living_time=..1}] run setblock ~ ~ ~ red_sand
execute at @e[tag=magma_run.break,scores={living_time=5..}] run setblock ~ ~ ~ structure_void destroy

kill @e[tag=magma_run.break,scores={living_time=5..}]