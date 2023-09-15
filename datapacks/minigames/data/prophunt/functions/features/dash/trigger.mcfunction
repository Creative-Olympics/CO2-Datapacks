# Executed globally
# tellraw @a {"text":"prophunt:features/dash/trigger"}

kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# Dash
execute as @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1,prophunt.dash_cooldown=0}] at @s run function prophunt:features/dash/start
execute as @e[tag=prophunt.dash] at @s run function prophunt:features/dash/animation
execute as @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=10..,prophunt.dash_cooldown=0}] at @s run function prophunt:features/dash/stop
scoreboard players add @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1..,prophunt.dash_cooldown=0}] prophunt.drop_trigger 1

# Can't dash
execute as @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1..,prophunt.dash_cooldown=1..}] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
execute as @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1..,prophunt.dash_cooldown=1..}] at @s run function prophunt:utils/give_items/hunter
scoreboard players set @a[tag=prophunt.is_hunter,scores={prophunt.drop_trigger=1..,prophunt.dash_cooldown=1..}] prophunt.drop_trigger 0

execute as @a[scores={prophunt.dash_cooldown=1}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players remove @a[tag=prophunt.is_hunter,scores={prophunt.dash_cooldown=1..}] prophunt.dash_cooldown 1

