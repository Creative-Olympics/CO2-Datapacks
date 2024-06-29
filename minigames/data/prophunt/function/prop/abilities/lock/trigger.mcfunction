execute as @a[team=prophunt,tag=prophunt.is_locked,scores={prophunt.prop_lock=0}] at @s run function prophunt:prop/abilities/lock/stop
scoreboard players remove @a[team=prophunt,tag=prophunt.is_locked,scores={prophunt.prop_lock=1..}] prophunt.prop_lock 1

execute as @e[type=minecraft:interaction,tag=prophunt.restore_hitbox] run function prophunt:prop/abilities/lock/restore_hitbox
tag @e[type=minecraft:interaction,tag=prophunt.hitbox,scores={prophunt.prop_lock=1..}] add prophunt.restore_hitbox
