# Executed as and at the player
# tellraw @a {"text":"prophunt:events/prop_switch_begin"}

clear @s

function prophunt:events/unlock_prop

playsound minecraft:entity.allay.item_given master @a[distance=..5] ~ ~ ~ 2 2 0

particle dust 0.667 0.000 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 500 force
effect give @s speed infinite 10 true
effect give @s jump_boost infinite 5 true

# Identify player that switch
tag @s add prophunt.switch_prop.player

# Kill entities that belong to the player
execute as @e[tag=prophunt.prop_entity] if score @s prophunt.parent_UUID = @p[tag=prophunt.switch_prop.player] UUID run kill @s 

# Remove identification tag
tag @s remove prophunt.switch_prop.player