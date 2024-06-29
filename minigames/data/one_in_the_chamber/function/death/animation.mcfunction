scoreboard players remove @s oitc.respawn_timer 1
scoreboard players operation $id.suid bs.in = @s bs.id
spectate @e[type=block_display,tag=oitc.camera,predicate=bs.id:suid_equal,limit=1]
execute as @e[type=block_display,tag=oitc.camera,predicate=bs.id:suid_equal,limit=1] at @s run tp @s ^ ^ ^-0.1 ~ ~0.65

execute if score @s oitc.respawn_timer matches 0 run kill @e[type=block_display,tag=oitc.camera,predicate=bs.id:suid_equal,limit=1]
execute if score @s oitc.respawn_timer matches 0 run function one_in_the_chamber:death/respawn
