# Executed globally
# tellraw @a {"text":"prophunt:triggers/stun_hunters"}


tag @a[tag=prophunt.is_prop,nbt={Inventory:[{Slot:-106b,id:"minecraft:ghast_tear"}]}] add prophunt.stun_trigger

# Can use it
execute as @a[tag=prophunt.stun_trigger,scores={prophunt.stun_hunters_cooldown=0}] at @s run function prophunt:events/stun_hunters

# In cooldown
execute as @a[tag=prophunt.stun_trigger,scores={prophunt.stun_hunters_cooldown=1..}] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0

# Give items
execute as @a[tag=prophunt.stun_trigger] at @s run function prophunt:events/give_prop_items

# Cooldown
scoreboard players remove @a[scores={prophunt.stun_hunters_cooldown=1..}] prophunt.stun_hunters_cooldown 1

# Remove tag
tag @a remove prophunt.stun_trigger