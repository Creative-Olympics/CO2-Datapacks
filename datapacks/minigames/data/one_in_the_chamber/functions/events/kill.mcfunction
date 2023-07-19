# Executed as & at player
tellraw @a [{"text":"oitc:events/kill on "},{"selector":"@s"}]

tellraw @a[team=oitc] [{"text":"OITC > ","color":"red","bold":true}, {"selector":"@p[team=oitc,scores={oitc_time_since_death=0}]"}, {"text":" was killed by ","color":"gray","bold":false}, {"selector":"@s"}]
clear @s arrow
give @s arrow