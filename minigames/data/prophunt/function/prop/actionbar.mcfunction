# Executed as player

# Switch ----------------------------------------------------------------------

scoreboard players operation #this prophunt.prop_switch_cooldown = @s prophunt.prop_switch_cooldown
scoreboard players operation #this prophunt.prop_switch_cooldown /= 20 const
scoreboard players add #this prophunt.prop_switch_cooldown 1

# Switching prop
execute if score @s prophunt.prop_switch_cooldown matches 100.. \
  run data modify storage prophunt:controls switch set value '[{"text":"Press ","color":"red"},{"keybind":"key.drop"}," to switch prop"]'
# Cooldown
execute if score @s prophunt.prop_switch_cooldown matches 1..99 \
  run data modify storage prophunt:controls switch set value '[{"text":"Switch prop ","color":"red"},{"score":{"name":"#this","objective":"prophunt.prop_switch_cooldown"}},"s"]'
# Can use it
execute unless score @s prophunt.prop_switch_cooldown matches 1.. \
  run data modify storage prophunt:controls switch set value '[{"text":"Press ","color":"white"},{"keybind":"key.drop","color":"dark_aqua"}," to switch prop"]'


# Stun ------------------------------------------------------------------------

scoreboard players operation #this prophunt.prop_stun_cooldown = @s prophunt.prop_stun_cooldown
scoreboard players operation #this prophunt.prop_stun_cooldown /= 20 const
scoreboard players add #this prophunt.prop_stun_cooldown 1

# Switching prop
execute if score @s prophunt.prop_switch_cooldown matches 100.. \
  run data modify storage prophunt:controls stun set value '[{"keybind":"key.swapOffhand","color":"red"}," to stun hunters"]'
# Cooldown
execute if score @s prophunt.prop_stun_cooldown matches 1.. \
  run data modify storage prophunt:controls stun set value '[{"text":"Stun hunters ","color":"red"},{"score":{"name":"#this","objective":"prophunt.prop_stun_cooldown"}},"s"]'
# Can use it
execute unless score @s prophunt.prop_switch_cooldown matches 100.. unless score @s prophunt.prop_stun_cooldown matches 1.. \
  run data modify storage prophunt:controls stun set value '[{"keybind":"key.swapOffhand","color":"dark_aqua"},{"text":" to stun hunters","color":"white"}]'


# Lock ------------------------------------------------------------------------

# Switching prop
execute if score @s prophunt.prop_switch_cooldown matches 100.. \
  run data modify storage prophunt:controls lock set value '[{"text":"Hold ","color":"red"},{"keybind":"key.use"}," to lock"]'
# Can use it
execute unless score @s prophunt.prop_switch_cooldown matches 100.. \
  run data modify storage prophunt:controls lock set value '[{"text":"Hold ","color":"white"},{"keybind":"key.use","color":"dark_aqua"}," to lock"]'


# Display ---------------------------------------------------------------------

title @s actionbar [ \
  {"storage":"prophunt:controls","nbt":"switch","interpret":true}, \
  {"text":"   |   ","color":"white"}, \
  {"storage":"prophunt:controls","nbt":"stun","interpret":true}, \
  {"text":"   |   ","color":"white"}, \
  {"storage":"prophunt:controls","nbt":"lock","interpret":true} \
]
