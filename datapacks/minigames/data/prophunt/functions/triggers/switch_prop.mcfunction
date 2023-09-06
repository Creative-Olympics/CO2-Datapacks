# Executed globally
# tellraw @a {"text":"prophunt:triggers/prop_switch"}

# Kill item
kill @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}]

# If in cooldown
execute as @a[scores={prophunt.drop_trigger=1,prophunt.prop_switch_cooldown=1..}] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
execute as @a[scores={prophunt.drop_trigger=1,prophunt.prop_switch_cooldown=1..}] at @s run function prophunt:events/give_prop_items
scoreboard players set @a[scores={prophunt.drop_trigger=1..,prophunt.prop_switch_cooldown=1..}] prophunt.drop_trigger 0

# If not in cooldown
execute as @a[scores={prophunt.drop_trigger=1,prophunt.prop_switch_cooldown=0}] at @s run function prophunt:events/switch_prop_begin
scoreboard players add @a[scores={prophunt.drop_trigger=1..}] prophunt.drop_trigger 1
execute as @a[scores={prophunt.drop_trigger=20}] at @s run function prophunt:events/switch_prop_end

# Start cooldown
scoreboard players remove @a[scores={prophunt.prop_switch_cooldown=1..}] prophunt.prop_switch_cooldown 1