scoreboard players set players setup 0
execute as @a run scoreboard players set players setup 1
tellraw @s ["",{"text":"Online players : "},{"score":{"name":"players","objective":"setup"}}]