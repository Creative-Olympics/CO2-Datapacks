# Executed globally
# tellraw @a {"text":"prophunt:switch_prop/trigger"}

# Kill item
kill @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}]

# If in cooldown
execute as @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1,prophunt.prop_switch_cooldown=1..}] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
execute as @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1,prophunt.prop_switch_cooldown=1..}] at @s run function prophunt:utils/give_items/prop
scoreboard players set @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1..,prophunt.prop_switch_cooldown=1..}] prophunt.drop_trigger 0

# If not in cooldown
execute as @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1,prophunt.prop_switch_cooldown=0}] at @s run function prophunt:switch_prop/start
scoreboard players add @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=1..}] prophunt.drop_trigger 1
execute as @a[tag=prophunt.is_prop,scores={prophunt.drop_trigger=20}] at @s run function prophunt:switch_prop/stop

# Start cooldown
execute as @a[tag=prophunt.is_prop,scores={prophunt.prop_switch_cooldown=1}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players remove @a[tag=prophunt.is_prop,scores={prophunt.prop_switch_cooldown=1..}] prophunt.prop_switch_cooldown 1