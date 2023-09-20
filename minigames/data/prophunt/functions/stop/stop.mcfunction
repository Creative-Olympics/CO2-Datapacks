# Executed globally
# tellraw @a {"text":"prophunt:stop"}

execute as @a[scores={prophunt.drop_trigger=1..}] run function prophunt:switch_prop/stop

schedule function prophunt:start/place_starting_sign 10s

kill @e[tag=prophunt.entity]
execute as @a[team=prophunt] at @s run function prophunt:stop/reset_player
scoreboard players set $prophunt.game_started data 0