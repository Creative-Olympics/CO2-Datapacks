clear @s
tag @s remove prophunt.is_prop

scoreboard players remove @a[team=prophunt,tag=prophunt.is_attacker] prophunt.hunter_ultimate_points 600

scoreboard players operation $id.suid bs.in = @s bs.id
execute as @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal] run function prophunt:prop/display/kill

tellraw @a[team=prophunt] [{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"selector":"@a[team=prophunt,tag=prophunt.is_attacker]","bold":false,"italic":false},{"text":" found ","color":"gray","bold":false,"italic":false},{"selector":"@s","bold":false,"italic":false},{"text":"!","color":"gray","bold":false,"italic":false}]

execute store result score $prophunt.prop_count data if entity @a[team=prophunt,tag=prophunt.is_prop]

title @a[team=prophunt] times 0 40 20
title @a[team=prophunt] title ""

execute if score $prophunt.prop_count data matches 1.. run title @s title {"text":"Discovered 😢","color":"red"}
execute if score $prophunt.prop_count data matches 2.. run title @a[team=prophunt] subtitle [{"score":{"name":"$prophunt.prop_count","objective": "data"}},{"text":" props remaining","color":"gray"}]
execute if score $prophunt.prop_count data matches 1 run title @a[team=prophunt] subtitle [{"text":"1 prop remaining","color":"gray"}]
execute if score $prophunt.prop_count data matches 1.. run playsound minecraft:block.anvil.place master @a[team=prophunt] ~ ~ ~ 2 2 1

playsound minecraft:entity.blaze.death master @a[team=prophunt,distance=..30] ~ ~ ~ 2 2 1

particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 100 force
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
