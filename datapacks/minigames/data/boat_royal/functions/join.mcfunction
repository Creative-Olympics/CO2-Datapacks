
execute if entity @s[tag=!BRoyalSolo] run summon boat ~ 97 ~ {Tags:["boat_royal","BRoyalNew"],Rotation:[180.0f,0.0f]}
execute if entity @s[tag=BRoyalSolo] run summon chest_boat ~ 97 ~ {Tags:["boat_royal","BRoyalNew"],Rotation:[180.0f,0.0f]}

execute if entity @s[tag=!BRoyalSolo] run ride @s mount @e[type=boat,limit=1,tag=BRoyalNew]
execute if entity @s[tag=BRoyalSolo] run ride @s mount @e[type=chest_boat,limit=1,tag=BRoyalNew]

function boat_royal:items

tag @s add InBoatRoyal
tag @e[type=boat,limit=1,tag=BRoyalNew] remove BRoyalNew

