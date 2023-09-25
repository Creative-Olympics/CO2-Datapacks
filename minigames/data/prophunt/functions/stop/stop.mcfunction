# Executed globally
# tellraw @a {"text":"prophunt:stop"}

execute as @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1..}] run function prophunt:switch_prop/stop
stopsound @a[team=prophunt] music

kill @e[tag=prophunt.entity]
execute as @a[team=prophunt] at @s run function #prophunt:reset_player
scoreboard players set $prophunt.game_started data 0