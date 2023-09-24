

# Endgame title
scoreboard players set #prophunt.prop_count data 0
execute as @a[tag=prophunt.is_prop] run scoreboard players add #prophunt.prop_count data 1
execute if score #prophunt.prop_count data matches 0 as @a[tag=prophunt.was_prop] run function #global:animated_title {type:"defeat"}
execute if score #prophunt.prop_count data matches 0 as @a[tag=prophunt.is_hunter] run function #global:animated_title {type:"victory"}
execute if score #prophunt.prop_count data matches 1.. as @a[tag=prophunt.is_prop] run function #global:animated_title {type:"victory"}
execute if score #prophunt.prop_count data matches 1.. as @a[tag=prophunt.was_prop] run function #global:animated_title {type:"victory"}
execute if score #prophunt.prop_count data matches 1.. as @a[tag=prophunt.is_hunter] run function #global:animated_title {type:"defeat"}

execute if score #prophunt.prop_count data matches 0 run tellraw @a[team=prophunt] [{"text": "\nPROPHUNT > ","color":"blue"},{"text": "Hunters win the game!\n","color": "gray"}]
execute if score #prophunt.prop_count data matches 1.. run tellraw @a[team=prophunt] [{"text": "\nPROPHUNT > ","color":"blue"},{"text": "Props win the game!\n","color": "gray"}]

function prophunt:stop/stop