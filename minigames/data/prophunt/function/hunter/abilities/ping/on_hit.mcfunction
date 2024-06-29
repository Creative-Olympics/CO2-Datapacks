# Executed as and at the pinging player
# tellraw @a {"text":"prophunt:ping/run"}

scoreboard players remove @s prophunt.hunter_ping_stack 1
execute unless score @s prophunt.hunter_ping_cooldown matches 1.. run scoreboard players set @s prophunt.hunter_ping_cooldown 100
effect give @s glowing 2 0 true

playsound minecraft:block.note_block.bell master @a[tag=prophunt.is_hunter] ~ ~ ~ 2 1 1
particle dust{color:[0.000,0.267,1.000],scale:1} ~ ~ ~ 0.5 0.5 0.5 1 100 normal

execute summon block_display run function prophunt:hunter/abilities/ping/setup_ping_display
