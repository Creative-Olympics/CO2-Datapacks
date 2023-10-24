# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > global:features/living_time/main","color":"gray"}]

# Positive : count the time since last death
# Negative : give the time before the entity will be killed
scoreboard players add @e living_time 1
kill @e[scores={living_time=-1}]