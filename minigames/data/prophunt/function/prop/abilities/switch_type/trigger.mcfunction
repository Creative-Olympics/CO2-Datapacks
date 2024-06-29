# If the prop drop an item try to switch the prop (ensure the ability is not in cooldown)
execute as @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.drop=1..}] at @s run function prophunt:prop/abilities/switch_type/try_start

# Wait a second before applying the new variation the remaining time is the ability cooldown
execute as @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_switch_cooldown=100}] at @s run function prophunt:prop/abilities/switch_type/stop
execute as @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_switch_cooldown=1}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players remove @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_switch_cooldown=1..}] prophunt.prop_switch_cooldown 1
