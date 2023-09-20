# Executed as and at the pinging player
# tellraw @a {"text":"prophunt:ping/ping"}

effect give @s glowing 1 1 true
playsound minecraft:block.note_block.bell master @a[tag=prophunt.is_hunter] ~ ~ ~ 2 1 1
scoreboard players set @s prophunt.use_item_trigger 0