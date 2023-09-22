
execute as @a[x=-311,y=97,z=19,distance=..2,scores={jump.jump_trigger=1..}] at @s run function jump:start/start
scoreboard players set @a jump.jump_trigger 0