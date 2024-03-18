# Executed as and at the pinging player
# tellraw @a {"text":"prophunt:ping/run"}

effect give @s glowing 2 1 true
summon block_display ~ ~ ~ {Glowing:1b,block_state:{Name:"minecraft:lightning_rod"},Tags:["prophunt.ping","prophunt.ping.new"]}
particle dust 0.000 0.267 1.000 1 ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 1 100 normal
scoreboard players set @e[type=block_display,tag=prophunt.ping.new] bs.ttl 40
team join prophunt @e[type=block_display,tag=prophunt.ping.new]
playsound minecraft:block.note_block.bell master @a[tag=prophunt.is_hunter] ~ ~ ~ 2 1 1
scoreboard players set @s prophunt.use_item_trigger 0
tag @e[type=block_display,tag=prophunt.ping.new] remove prophunt.ping.new

scoreboard players remove @s prophunt.ping_stack 1