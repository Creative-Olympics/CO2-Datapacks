# Detect item in offhand
execute as @a[team=prophunt,tag=prophunt.is_prop,nbt={Inventory:[{Slot:-106b,id:"minecraft:ghast_tear"}]}] at @s run function prophunt:prop/abilities/stun/try_stun

execute as @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_stun_cooldown=1}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 2 0
scoreboard players remove @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_stun_cooldown=1..}] prophunt.prop_stun_cooldown 1
