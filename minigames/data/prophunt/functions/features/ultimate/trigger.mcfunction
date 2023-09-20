# Executed globally
# tellraw @a {"text":"prophunt:features/ultimate/trigger"}

scoreboard players add @a[tag=prophunt.is_hunter] prophunt.ultimate_points 1
execute as @a[tag=prophunt.is_hunter] if score @s prophunt.ultimate_points = $prophunt.ultimate_cost data at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0

tag @a[tag=prophunt.is_hunter,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] add prophunt.ultimate_trigger

execute as @a[tag=prophunt.ultimate_trigger] at @s run function prophunt:utils/give_items/hunter

# Can't use it
execute as @a[tag=prophunt.ultimate_trigger,scores={prophunt.ultimate_timer=1..}] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
execute as @a[tag=prophunt.ultimate_trigger] if score @s prophunt.ultimate_points < $prophunt.ultimate_cost data at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0

# Can use it
execute as @a[tag=prophunt.ultimate_trigger,scores={prophunt.ultimate_timer=0}] if score @s prophunt.ultimate_points >= $prophunt.ultimate_cost data at @s run function prophunt:features/ultimate/start
execute as @a[scores={prophunt.ultimate_timer=1..}] at @s run function prophunt:features/ultimate/animation

tag @a remove prophunt.ultimate_trigger