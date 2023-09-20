# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > prophunt:features/kill_prop/trigger","color":"gray"}]

execute as @e[tag=prophunt.interaction,nbt={attack:{}}] at @s run function prophunt:features/kill_prop/check_is_hunter