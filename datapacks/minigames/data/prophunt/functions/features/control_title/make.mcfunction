# Executed as & at player
# tellraw @a {"text":"prophunt:mechanics/control_title/child-make"}

#==============================================================================
# Props
#==============================================================================

# Switch ----------------------------------------------------------------------

scoreboard players operation #switch_prop_cooldown data = @s prophunt.prop_switch_cooldown
scoreboard players operation #switch_prop_cooldown data /= 20 data
scoreboard players add #switch_prop_cooldown data 1

# Can use it
execute as @s[tag=prophunt.is_prop,scores={prophunt.drop_trigger=0,prophunt.prop_switch_cooldown=0}] run data modify storage prophunt:controls switch set value '{"text":"Press ","color":"white"},{"keybind":"key.drop","color":"dark_aqua"},{"text":" to switch prop","color":"white"}'
# Cooldown
execute as @s[tag=prophunt.is_prop,scores={prophunt.prop_switch_cooldown=1..}] run data modify storage prophunt:controls switch set value '{"text":"Switch prop ","color":"red"},{"score":{"name":"#switch_prop_cooldown","objective":"data"},"color":"red"},{"text":"s","color":"red"}'
# Switching prop
execute as @s[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1..}] run data modify storage prophunt:controls switch set value '{"text":"Press ","color":"red"},{"keybind":"key.drop","color":"red"},{"text":" to switch prop","color":"red"}'

# Stun ------------------------------------------------------------------------

scoreboard players operation #stun_hunters_cooldown data = @s prophunt.stun_hunters_cooldown
scoreboard players operation #stun_hunters_cooldown data /= 20 data
scoreboard players add #stun_hunters_cooldown data 1

# Can use it
execute as @s[tag=prophunt.is_prop,scores={prophunt.drop_trigger=0,prophunt.stun_hunters_cooldown=0}] run data modify storage prophunt:controls stun set value '{"keybind":"key.swapOffhand","color":"dark_aqua"},{"text":" to stun hunters","color":"white"}'
# Switching prop
execute as @s[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1..,prophunt.stun_hunters_cooldown=0}] run data modify storage prophunt:controls stun set value '{"keybind":"key.swapOffhand","color":"red"},{"text":" to stun hunters","color":"red"}'
# Cooldown
execute as @s[tag=prophunt.is_prop,scores={prophunt.stun_hunters_cooldown=1..}] run data modify storage prophunt:controls stun set value '{"text":"Stun hunters ","color":"red"},{"score":{"name":"#stun_hunters_cooldown","objective":"data"},"color":"red"},{"text":"s","color":"red"}'

# Lock ------------------------------------------------------------------------

# Can lock
execute as @s[tag=prophunt.is_prop,tag=!prophunt.is_locked] run data modify storage prophunt:controls lock set value '{"keybind":"key.attack","color":"dark_aqua"},{"text":" to lock","color":"white"}'
# Can unlock
execute as @s[tag=prophunt.is_prop,tag=prophunt.is_locked] run data modify storage prophunt:controls lock set value '{"keybind":"key.attack","color":"dark_aqua"},{"text":" to unlock","color":"white"}'
# Switching prop
execute as @s[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1..}] run data modify storage prophunt:controls lock set value '{"keybind":"key.attack","color":"red"},{"text":" to lock","color":"red"}'


#==============================================================================
# Display
#==============================================================================

function prophunt:features/control_title/macro with storage prophunt:controls