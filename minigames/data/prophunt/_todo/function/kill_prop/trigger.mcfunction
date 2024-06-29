# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > prophunt:kill_prop/trigger","color":"gray"}]

execute as @e[tag=prophunt.interaction,nbt={attack:{}}] at @s run function prophunt:kill_prop/check_is_hunter