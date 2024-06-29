scoreboard players operation $id.suid bs.in = @s bs.id
execute unless entity @s[tag=prophunt.is_locked] run function prophunt:prop/abilities/lock/start
ride @s mount @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal,limit=1]

scoreboard players set @s prophunt.prop_lock 4
advancement revoke @s only prophunt:prop_lock
