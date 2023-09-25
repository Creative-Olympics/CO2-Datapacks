# Executed as and at the attacked interaction
# tellraw @a [{"selector":"@s"},{"text":" > prophunt:kill_prop/run","color":"gray"}]

function prophunt:utils/get_associated_entities

tag @p[tag=prophunt.current.player] add prophunt.was_prop
tag @p[tag=prophunt.current.player] remove prophunt.is_prop

tellraw @a[team=prophunt] [{"text":"PROPHUNT > ","color":"blue","bold":true,"italic":true},{"selector":"@p[tag=prophunt.current.hunter]","bold":false,"italic":false},{"text":" found ","color":"gray","bold":false,"italic":false},{"selector":"@p[tag=prophunt.current.player]","bold":false,"italic":false},{"text":"!","color":"gray","bold":false,"italic":false}]

# Remaining props title
scoreboard players set #prophunt.prop_count data 0
execute as @a[tag=prophunt.is_prop] run scoreboard players add #prophunt.prop_count data 1
title @a[team=prophunt] times 0 40 20
title @a[team=prophunt] title {"text":" "}
execute if score #prophunt.prop_count data matches 1.. run title @a[tag=prophunt.current.player] title {"text":"Discovered 😢","color":"red"}
execute if score #prophunt.prop_count data matches 2.. run title @a[team=prophunt] subtitle [{"score":{"name":"#prophunt.prop_count","objective": "data"}},{"text":" props remaining","color":"gray"}]
execute if score #prophunt.prop_count data matches 1 run title @a[team=prophunt] subtitle [{"text":"1 prop remaining","color":"gray"}]
execute if score #prophunt.prop_count data matches 1.. run playsound minecraft:block.anvil.place master @a[team=prophunt] ~ ~ ~ 2 2 1

scoreboard players set @a[team=prophunt] prophunt.stop.timer 1

clear @a[tag=prophunt.current.player]

playsound minecraft:entity.blaze.death master @a[distance=..30] ~ ~ ~ 2 2 1
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 100 force
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force

execute as @p[tag=prophunt.current.player,tag=prophunt.is_locked] at @s run function prophunt:lock_position/unlock
kill @e[tag=prophunt.current.display]
kill @e[tag=prophunt.current.interaction]