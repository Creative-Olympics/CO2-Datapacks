# Executed as player

# Dash ----------------------------------------------------------------------

scoreboard players operation #this prophunt.hunter_dash_cooldown = @s prophunt.hunter_dash_cooldown
scoreboard players operation #this prophunt.hunter_dash_cooldown /= 20 const
scoreboard players add #this prophunt.hunter_dash_cooldown 1

# Dashing or stunned
data modify storage prophunt:controls dash set value '[{"text":"Press ","color":"red"},{"keybind":"key.drop"}," to dash"]'
# Cooldown
execute if score @s prophunt.hunter_dash_cooldown matches 1..199 \
  run data modify storage prophunt:controls dash set value '[{"text":"Dash ","color":"red"},{"score":{"name":"#this","objective":"prophunt.hunter_dash_cooldown"}},"s"]'
# Can use it
execute unless score @s prophunt.hunter_dash_cooldown matches 1.. unless score @s prophunt.hunter_stunned matches 1.. \
  run data modify storage prophunt:controls dash set value '[{"text":"Press ","color":"white"},{"keybind":"key.drop","color":"dark_aqua"}," to dash"]'


# Ultimate ------------------------------------------------------------------------

scoreboard players operation #this prophunt.hunter_ultimate_points = @s prophunt.hunter_ultimate_points
scoreboard players operation #this prophunt.hunter_ultimate_points *= 100 const
scoreboard players operation #this prophunt.hunter_ultimate_points /= $prophunt.hunter_ultimate_cost data

scoreboard players operation #this prophunt.hunter_ultimate_timer = @s prophunt.hunter_ultimate_timer
scoreboard players operation #this prophunt.hunter_ultimate_timer /= 20 const
scoreboard players add #this prophunt.hunter_ultimate_timer 1

# Dashing or stunned
data modify storage prophunt:controls ultimate set value '[{"keybind":"key.swapOffhand","color":"red"},{"text":" to enrage","color":"red"}]'
# Already in ultimate
execute if score @s prophunt.hunter_ultimate_timer matches 1.. \
  run data modify storage prophunt:controls ultimate set value '{"text":"... ","color":"red","obfuscated":"true"},{"text":"ENRAGED ","color":"red"},{"score":{"name":"#this","objective":"prophunt.hunter_ultimate_timer"},"color":"red"},{"text":"s","color":"red"},{"text":" ...","color":"red","obfuscated":"true"}'
# Can enrage
execute unless score @s prophunt.hunter_dash_cooldown matches 200.. \
  unless score @s prophunt.hunter_ultimate_timer matches 1.. \
  unless score @s prophunt.hunter_stunned matches 1.. \
  if score @s prophunt.hunter_ultimate_timer >= $prophunt.hunter_ultimate_cost data \
  run data modify storage prophunt:controls ultimate set value '[{"text":"... ","color":"green","obfuscated":"true"},{"keybind":"key.swapOffhand","color":"dark_aqua"},{"text":" TO ENRAGE","color":"green"},{"text":" ...","color":"green","obfuscated":"true"}]'
# Progress
execute if score @s prophunt.hunter_ultimate_points < $prophunt.hunter_ultimate_cost data run data modify storage prophunt:controls ultimate set value '{"text":"Enrage ","color":"red"},{"score":{"name":"prophunt.hunter_ultimate_points","objective":"data"},"color":"yellow"},{"text":"%","color":"yellow"}'


# Ping ------------------------------------------------------------------------

# Dashing or stunned
data modify storage prophunt:controls ping set value '[{"keybind":"key.use","color":"red"},{"text":" to ping","color":"red"}]'
# Can ping
execute unless score @s prophunt.hunter_dash_cooldown matches 1.. unless score @s prophunt.hunter_stunned matches 1.. \
  run data modify storage prophunt:controls ping set value '[{"keybind":"key.use","color":"dark_aqua"},{"text":" to ping","color":"white"}]'


# Display ---------------------------------------------------------------------

title @s actionbar [ \
  {"storage":"prophunt:controls","nbt":"dash","interpret":true}, \
  {"text":"   |   ","color":"white"}, \
  {"storage":"prophunt:controls","nbt":"ultimate","interpret":true}, \
  {"text":"   |   ","color":"white"}, \
  {"storage":"prophunt:controls","nbt":"ping","interpret":true} \
]
