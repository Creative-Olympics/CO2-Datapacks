

# Identify riding entity
tag @s add global.current.player
execute as @e[tag=reloc] if score @s parent.SUID = @p[tag=global.current.player] SUID run tag @s add global.current.entity

gamemode adventure @s
execute align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ 0
scoreboard players set @s reloc.timer 0
kill @e[tag=global.current.entity]

particle cloud ~ ~1 ~ 0 0.5 0 0.1 100 normal @a[distance=0.1..30]

scoreboard players operation @s bs.rot.h = @s reloc.rot
function bs.position:set_rot/h {scale: 1}

# Remove identification tag
tag @a[tag=global.current.player] remove global.current.player

tag @s remove lib.relocalizing