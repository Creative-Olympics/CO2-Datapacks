
tag @e[tag=lib.id.source] remove lib.id.source
tag @e[tag=lib.id.parent] remove lib.id.parent

tag @s add lib.id.source
execute at @s as @e if score @s SUID = @e[tag=lib.id.source,limit=1,sort=nearest] parent.SUID run tag @s add lib.id.parent