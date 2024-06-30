team join boat_royal @s
scoreboard players set $boat_royal.game_started data 1
function #common:animated_title {type:"start"}

advancement grant @s only boat_royal:update_hotbar

execute if predicate boat_royal:has_vehicle run return 0
execute facing -38 ~ -115 positioned ^ ^ ^.7 run summon boat ~ 96.3 ~ {Tags:["boat_royal","boat_royal.new"],Rotation:[180.0f,0.0f]}
execute as @e[type=boat,tag=boat_royal.new,limit=1] unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"stepping_on":{"block":{"blocks":"minecraft:air"}}}} run tp @s -34 96.3 -90
ride @s mount @e[type=boat,tag=boat_royal.new,limit=1]
tag @e[type=boat,tag=boat_royal.new,limit=1] remove boat_royal.new
