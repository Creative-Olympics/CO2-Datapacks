# Executed globally
# tellraw @a {"text":"prophunt:stop"}

execute as @a[scores={prophunt.drop_trigger=1..}] run function prophunt:event/prop_switch_end
effect clear @a[tag=prophunt.is_prop] minecraft:invisibility

clear @a[team=prophunt]
team empty prophunt
kill @e[tag=prophunt]

tag @a remove prophunt.is_hunter
tag @a remove prophunt.is_prop