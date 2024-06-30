# Executed as and at the player that need to be relocalized
# Usage: execute as [...] at [reloc] run function #common:relocalize_player
# Note: the relocalization will take 3 seconds
# tellraw @a [{"selector":"@s"},{"text":" > common:relocalize_player/interface","color":"gray"}]

team join lobby @s
gamemode spectator @s

execute at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.2 1.5 0
execute at @s run particle cloud ~ ~1 ~ 0 0.5 0 0.1 100 normal @a[distance=0.1..30]

execute if entity @s[predicate=!bs.id:has_suid] run function #bs.id:give_suid
scoreboard players operation $id.suid bs.in = @s bs.id

function #bs.position:get_pos_and_rot {scale:1000}
execute at @s summon block_display run function common:relocalize_player/setup_camera
