execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_stunned=1..}] at @s run function prophunt:hunter/stunned/apply
execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_stunned=1}] run function prophunt:hunter/stunned/stop

execute store success score #success data run scoreboard players remove @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_stunned=1..}] prophunt.hunter_stunned 1
execute if score #success data matches 1 run schedule function prophunt:hunter/stunned/process 1t replace
