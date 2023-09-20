# Executed globally
# tellraw @a {"text":"prophunt:triggers/stun_hunters"}

#==============================================================================
# Prop stun hunters
#==============================================================================

# Detect item in offhand
tag @a[tag=prophunt.is_prop,nbt={Inventory:[{Slot:-106b,id:"minecraft:ghast_tear"}]}] add prophunt.stun_trigger

# Can use it
execute as @a[tag=prophunt.stun_trigger,scores={prophunt.stun_hunters_cooldown=0}] at @s run function prophunt:features/stun/stun_hunters

# In cooldown
execute as @a[tag=prophunt.stun_trigger,scores={prophunt.stun_hunters_cooldown=1..}] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0

# Give items
execute as @a[tag=prophunt.stun_trigger] at @s run function prophunt:utils/give_items/prop

# Cooldown
execute as @a[scores={prophunt.stun_hunters_cooldown=1}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players remove @a[scores={prophunt.stun_hunters_cooldown=1..}] prophunt.stun_hunters_cooldown 1

# Remove tag
tag @a remove prophunt.stun_trigger

#==============================================================================
# Hunter stuned
#==============================================================================

execute as @a[tag=prophunt.is_hunter,scores={prophunt.stuned=1..}] at @s run function prophunt:features/stun/stuned

effect clear @a[tag=prophunt.is_hunter,scores={prophunt.stuned=0}] slowness
effect clear @a[tag=prophunt.is_hunter,scores={prophunt.stuned=0}] mining_fatigue
effect clear @a[tag=prophunt.is_hunter,scores={prophunt.stuned=0}] jump_boost
effect clear @a[tag=prophunt.is_hunter,scores={prophunt.stuned=0}] blindness