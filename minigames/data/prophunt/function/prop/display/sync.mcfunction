scoreboard players operation $id.suid bs.in = @s bs.id
tp @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal] ~ ~ ~ ~ 0
execute as @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal] at @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
