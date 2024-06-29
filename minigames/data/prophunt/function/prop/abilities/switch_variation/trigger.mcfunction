execute as @a[team=prophunt,tag=prophunt.is_prop] unless score @s prophunt.prop_variation_cooldown matches 1.. run function prophunt:prop/abilities/switch_variation/check
scoreboard players remove @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_variation_cooldown=1..}] prophunt.prop_variation_cooldown 1
