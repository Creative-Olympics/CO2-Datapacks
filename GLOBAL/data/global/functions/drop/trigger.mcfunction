# Executed globally
# tellraw @a {"text":"global:triggers/drop"}

execute as @a[tag=global.cant_drop,scores={global.drop_trigger=1..}] at @s run function global:drop/drop
scoreboard players set @a global.drop_trigger 0