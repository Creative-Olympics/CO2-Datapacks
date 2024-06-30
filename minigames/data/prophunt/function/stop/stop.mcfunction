scoreboard players set $prophunt.game_started data 0
scoreboard objectives remove prophunt.sidebar

# Endgame title
execute if score $prophunt.prop_count data matches 0 as @a[team=prophunt,tag=prophunt.is_hunter] run function #common:animated_title {type:"victory"}
execute if score $prophunt.prop_count data matches 0 as @a[team=prophunt,tag=!prophunt.is_hunter] run function #common:animated_title {type:"defeat"}

execute if score $prophunt.prop_count data matches 1.. as @a[team=prophunt,tag=!prophunt.is_hunter] run function #common:animated_title {type:"victory"}
execute if score $prophunt.prop_count data matches 1.. as @a[team=prophunt,tag=prophunt.is_hunter] run function #common:animated_title {type:"defeat"}

execute if score $prophunt.prop_count data matches 0 run tellraw @a[team=prophunt] [{"text": "\nPROPHUNT > ","color":"blue","bold":true,"italic":true},{"text": "Hunters win the game!\n","color": "gray","bold":false,"italic":false}]
execute if score $prophunt.prop_count data matches 1.. run tellraw @a[team=prophunt] [{"text": "\nPROPHUNT > ","color":"blue","bold":true,"italic":true},{"text": "Props win the game!\n","color": "gray","bold":false,"italic":false}]

execute as @a[team=prophunt] run function #common:join_lobby

kill @e[tag=prophunt.entity]
