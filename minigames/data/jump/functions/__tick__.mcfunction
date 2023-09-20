
scoreboard objectives add jump.time dummy
scoreboard objectives add jump.timeM dummy
scoreboard objectives add jump.timeS dummy

execute as @a unless entity @a[x=-312,y=97,z=18,distance=..50] run scoreboard players set @s jump.time 0

tag @a[scores={jump.time=4..}] remove jump.restart
tag @a[scores={jump.time=0}] remove jump.restart
execute as @a[x=-312,y=97,z=18,distance=..2,scores={jump.time=100..}] at @s if block ~ ~ ~ crimson_pressure_plate run tag @s add jump.restart
scoreboard players set @a[tag=jump.restart,scores={jump.time=4..}] jump.time 1
scoreboard players set @a[x=-312,y=97,z=18,distance=..2,scores={jump.time=0}] jump.time 1
scoreboard players add @a[scores={jump.time=1..}] jump.time 1


tag @a remove jump.complete
tag @a[x=-336,y=111,z=1,distance=..1,scores={jump.time=1..}] add jump.complete

execute as @a run scoreboard players operation @s jump.timeM = @s jump.time
execute as @a run scoreboard players operation @s jump.timeM /= 1200 const

execute as @a run scoreboard players operation @s jump.timeS = @s jump.time
execute as @a run scoreboard players operation @s jump.timeS /= 20 const
execute as @a run scoreboard players operation @s jump.timeS %= 60 const


scoreboard players set @a[tag=jump.complete] jump.time 0

#MiniMarket jump messages
execute as @a[x=-312,y=97,z=18,distance=..2,scores={jump.time=3},tag=!jump.restart] at @s run tellraw @a[distance=..30] ["",{"text":"JUMP > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" started the MiniMarket's jumping course.","color":"gray"}]
execute as @a[x=-312,y=97,z=18,distance=..2,scores={jump.time=3},tag=jump.restart] at @s run tellraw @s ["",{"text":"JUMP > ","color":"yellow"},{"text":"Your timer has been reseted.","color":"gray"}]
execute as @a[x=-336,y=111,z=1,distance=..1,tag=jump.complete] at @s run tellraw @a[distance=..30] ["",{"text":"JUMP > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" finished the MiniMarket's jumping course in ","color":"gray"},{"score":{"name":"@s","objective":"jump.timeM"},"color":"yellow"},{"text":" minutes and ","color":"gray"},{"score":{"name":"@s","objective":"jump.timeS"},"color":"yellow"},{"text":" seconds.","color":"gray"}]

execute as @a[tag=jump.complete] at @s run summon firework_rocket ~ ~10 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,4312372,14602026,6719955],FadeColors:[I;11743532,4312372,14602026,6719955]}],Flight:0}}}}
execute as @a[tag=jump.complete] run function #global:endgame_title {type:"finish"}