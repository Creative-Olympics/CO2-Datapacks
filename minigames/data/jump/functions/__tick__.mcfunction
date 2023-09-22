
function jump:lobby_tick
execute if entity @a[scores={jump.time_left=1..}] run function jump:game_tick
execute unless entity @a[scores={jump.time_left=1..}] run kill @e[tag=jump.checkpoint]