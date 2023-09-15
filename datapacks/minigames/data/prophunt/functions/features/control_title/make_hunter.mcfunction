# Executed as & at player
# tellraw @a {"text":"prophunt:features/control_title/make_hunter"}

# Switch ----------------------------------------------------------------------

scoreboard players operation #dash_cooldown data = @s prophunt.dash_cooldown
# execute if score @s prophunt.ultimate_timer matches 1.. run scoreboard players operation #dash_cooldown data /= 2 data
scoreboard players operation #dash_cooldown data /= 20 data
scoreboard players add #dash_cooldown data 1

# Can use it
execute as @s[scores={prophunt.drop_trigger=0,prophunt.dash_cooldown=0}] run data modify storage prophunt:controls dash set value '{"text":"Press ","color":"white"},{"keybind":"key.drop","color":"dark_aqua"},{"text":" to dash","color":"white"}'
# Cooldown
execute as @s[scores={prophunt.dash_cooldown=1..}] run data modify storage prophunt:controls dash set value '{"text":"Dash ","color":"red"},{"score":{"name":"#dash_cooldown","objective":"data"},"color":"red"},{"text":"s","color":"red"}'
# Switching prop
execute as @s[scores={prophunt.drop_trigger=1..}] run data modify storage prophunt:controls dash set value '{"text":"Press ","color":"red"},{"keybind":"key.drop","color":"red"},{"text":" to dash","color":"red"}'

# Ultimate --------------------------------------------------------------------

scoreboard players operation #ultimate_progress data = @s prophunt.ultimate_points
scoreboard players operation #ultimate_progress data *= 100 data
scoreboard players operation #ultimate_progress data /= $prophunt.ultimate_cost data

scoreboard players operation #ultimate_timer data = @s prophunt.ultimate_timer
scoreboard players operation #ultimate_timer data /= 20 data
scoreboard players add #ultimate_timer data 1

# Can enrage
execute as @s[scores={prophunt.drop_trigger=0,prophunt.ultimate_timer=0}] if score @s prophunt.ultimate_points >= $prophunt.ultimate_cost data run data modify storage prophunt:controls ultimate set value '{"text":"... ","color":"green","obfuscated":"true"},{"keybind":"key.swapOffhand","color":"dark_aqua"},{"text":" TO ENRAGE","color":"green"},{"text":" ...","color":"green","obfuscated":"true"}'
# Dashing
execute as @s[scores={prophunt.drop_trigger=1..}] if score @s prophunt.ultimate_points >= $prophunt.ultimate_cost data run data modify storage prophunt:controls ultimate set value '{"keybind":"key.swapOffhand","color":"red"},{"text":" to enrage","color":"red"}'
# Already in ultimate
execute as @s[scores={prophunt.ultimate_timer=1..}] if score @s prophunt.ultimate_points >= $prophunt.ultimate_cost data run data modify storage prophunt:controls ultimate set value '{"text":"... ","color":"red","obfuscated":"true"},{"text":"ENRAGED ","color":"red"},{"score":{"name":"#ultimate_timer","objective":"data"},"color":"red"},{"text":"s","color":"red"},{"text":" ...","color":"red","obfuscated":"true"}'
# Progress
execute as @s if score @s prophunt.ultimate_points < $prophunt.ultimate_cost data run data modify storage prophunt:controls ultimate set value '{"text":"Enrage ","color":"red"},{"score":{"name":"#ultimate_progress","objective":"data"},"color":"yellow"},{"text":"%","color":"yellow"}'

# Lock ------------------------------------------------------------------------

# Can ping
execute as @s run data modify storage prophunt:controls ping set value '{"keybind":"key.use","color":"dark_aqua"},{"text":" to ping","color":"white"}'
# Dashing
execute as @s[scores={prophunt.drop_trigger=1..}] run data modify storage prophunt:controls ping set value '{"keybind":"key.use","color":"red"},{"text":" to ping","color":"red"}'

# Display ---------------------------------------------------------------------

function prophunt:features/control_title/macro_hunter with storage prophunt:controls