execute as @a[distance=..21] positioned ~-50 ~ ~-50 run team join magma_run @s[dx=99,dy=5,dz=99]

clear @a[team=magma_run]
tp @a[team=magma_run] -216 100 17
effect give @a[team=magma_run] speed infinite 2 true

execute as @a[team=magma_run] run function #lib:animated_title {type:"start"}
title @a[team=magma_run] subtitle {"text":"START TO RUN!","color":"gold","bold":true,"italic":true}

stopsound @a[team=magma_run] record
playsound magma_run:theme record @a[team=magma_run]
tellraw @a[team=magma_run] {"text":"Music by Oleksii Holubiev","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}

execute as @e[tag=lobby.horse,distance=..21] run function lobby:horse/kill

scoreboard players set $magma_run.countdown data 5
