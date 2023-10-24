
tag @e[tag=lib.id.source] remove lib.id.source
tag @e[tag=lib.id.child] remove lib.id.child

tag @s add lib.id.source
execute at @s as @e if score @s parent.SUID = @e[tag=lib.id.source,limit=1,sort=nearest] SUID run tag @s add lib.id.child