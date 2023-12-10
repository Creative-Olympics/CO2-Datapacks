
execute at @e[tag=lib.start_animation.magma_run] run team join magma_run @a[distance=..21]
execute at @e[tag=lib.start_animation.magma_run] run kill @e[tag=global.lobby_horse,distance=..21]
clear @a[team=magma_run]
tp @a[team=magma_run] -216 100 17

# execute at @e[tag=lib.start_animation.magma_run] run title @a[distance=..21] times 0 90 5
# execute at @e[tag=lib.start_animation.magma_run] run title @a[distance=..21] title {"text":" "}
execute at @e[tag=lib.start_animation.magma_run] run title @a[distance=..21] subtitle {"text":"START TO RUN!","color":"gold","bold":true,"italic":true}

execute as @a[team=magma_run] at @s run function #global:animated_title {type:"start"}
execute as @a[team=magma_run] at @s run stopsound @s record
execute as @a[team=magma_run] at @s run playsound magma_run:theme record @s
execute as @a[team=magma_run] at @s run tellraw @s {"text":"Music by Oleksii Holubiev","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}

effect give @a[team=magma_run] speed infinite 2 true
scoreboard players set $magma_run.game_started data 1

function magma_run:map/lock

scoreboard players set $magma_run.post_start_timer data 100