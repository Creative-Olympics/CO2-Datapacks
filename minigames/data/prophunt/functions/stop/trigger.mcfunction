scoreboard players remove $prophunt.remaining_time data 1
execute if score $prophunt.remaining_time data matches ..0 run function #prophunt:stop

scoreboard players set #prophunt.prop_count data 0
execute as @a[tag=prophunt.is_prop] run scoreboard players add #prophunt.prop_count data 1
execute if score #prophunt.prop_count data matches 0 run function #prophunt:stop

scoreboard players set #prophunt.hunter_count data 0
execute as @a[tag=prophunt.is_hunter] run scoreboard players add #prophunt.hunter_count data 1
execute if score #prophunt.hunter_count data matches 0 run function #prophunt:stop