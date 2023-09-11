# Executed globally
# tellraw @a {"text":"prophunt:stop"}

execute as @a[scores={prophunt.drop_trigger=1..}] run function prophunt:event/prop_switch_end
kill @e[tag=prophunt]
execute as @a[team=prophunt] at @s run function prophunt:reset_player