execute unless predicate bs.id:has_suid run function #bs.id:give_suid

scoreboard players operation $id.suid bs.in = @s bs.id
execute as @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal] run function prophunt:prop/display/kill

scoreboard players add @s prophunt.prop_variation 0
execute store result storage bs:ctx y int 1 run scoreboard players add @s prophunt.prop_type 0
function prophunt:prop/display/type/dispatch with storage bs:ctx

scoreboard players operation @e[type=minecraft:block_display,tag=prophunt.new] bs.id = @s bs.id
execute as @e[type=minecraft:block_display,tag=prophunt.new] on passengers run tag @s add prophunt.entity
execute as @e[type=minecraft:block_display,tag=prophunt.new] on passengers run tag @s[type=minecraft:interaction] add prophunt.hitbox
tag @e[type=minecraft:block_display,tag=prophunt.new] remove prophunt.new
