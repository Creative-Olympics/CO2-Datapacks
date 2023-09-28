# Executed as & at player
# tellraw @a [{"text":"oitc:events/kill on "},{"selector":"@s"}]

tellraw @a[team=oitc] [{"text":"OITC > ","color":"red","bold":true}, {"selector":"@p[team=oitc,scores={oitc_time_since_death=0}]","bold":false}, {"text":" was killed by ","color":"gray","bold":false}, {"selector":"@s","bold":false}]
clear @s arrow
loot give @s loot one_in_the_chamber:arrow