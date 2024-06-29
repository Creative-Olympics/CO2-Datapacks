# Executed as and at the dash entity
# tellraw @a [{"selector":"@s"},{"text":" > prophunt:dash/anumation-loop","color":"gray"}]

scoreboard players set #prophunt.dash.success data 0
execute at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #prophunt:can_walk_through store success score #prophunt.dash.success data run tp @s ~ ~ ~
execute if score #prophunt.dash.success data matches 0 at @s positioned ^ ^ ^0.1 positioned ~ ~1 ~ if block ~ ~ ~ #prophunt:can_walk_through store success score #prophunt.dash.success data run tp @s ~ ~ ~

execute at @s run particle cloud ^ ^ ^-3 0.3 0.5 0.3 0.1 1 force

execute positioned ~ ~-1 ~ if entity @e[tag=prophunt.interaction,distance=..3] run tag @p[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1..}] add prophunt.current.hunter
execute positioned ~ ~-1 ~ as @e[tag=prophunt.interaction,distance=..3] run function prophunt:kill_prop/run

scoreboard players add #prophunt.dash.loop data 1
execute unless score #prophunt.dash.loop data matches 15.. at @s run function prophunt:dash/animation_loop
