# Executed as and at the pinging player
# tellraw @a {"text":"prophunt:ping/run"}


effect give @s glowing 1 1 true
summon block_display ~ ~ ~ {Glowing:1b,block_state:{Name:"minecraft:air"},Tags:["prophunt.ping","prophunt.ping.new"]}
team join prophunt @e[type=block_display,tag=prophunt.ping.new]
scoreboard players set @
playsound minecraft:block.note_block.bell master @a[tag=prophunt.is_hunter] ~ ~ ~ 2 1 1
scoreboard players set @s prophunt.use_item_trigger 0