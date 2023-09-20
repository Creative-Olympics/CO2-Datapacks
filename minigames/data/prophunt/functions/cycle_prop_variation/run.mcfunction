# Executed as and at the player
# tellraw @a [{"text":"prophunt:cycle_prop_variation/run   as   "},{"selector":"@s"}]

scoreboard players operation #old_variation data = @s prophunt.prop_variation

# Cycle prop
scoreboard players add @s prophunt.prop_variation 1

# Cycle limit
execute as @a[scores={prophunt.prop_type=0..2,prophunt.prop_variation=2..}] run scoreboard players set @s prophunt.prop_variation 0
execute as @a[scores={prophunt.prop_type=3,prophunt.prop_variation=3..}] run scoreboard players set @s prophunt.prop_variation 0
execute as @a[scores={prophunt.prop_type=4..5,prophunt.prop_variation=1..}] run scoreboard players set @s prophunt.prop_variation 0
execute as @a[scores={prophunt.prop_type=6,prophunt.prop_variation=2..}] run scoreboard players set @s prophunt.prop_variation 0
execute as @a[scores={prophunt.prop_type=7..10,prophunt.prop_variation=1..}] run scoreboard players set @s prophunt.prop_variation 0
execute as @a[scores={prophunt.prop_type=11,prophunt.prop_variation=2..}] run scoreboard players set @s prophunt.prop_variation 0
execute as @a[scores={prophunt.prop_type=12..,prophunt.prop_variation=1..}] run scoreboard players set @s prophunt.prop_variation 0

# Refresh prop
execute unless score #old_variation data = @s prophunt.prop_variation run function prophunt:prop_display/refresh

# Animation
execute unless score #old_variation data = @s prophunt.prop_variation run playsound minecraft:ui.toast.in master @s ~ ~ ~ 1 2 0
execute unless score #old_variation data = @s prophunt.prop_variation run particle effect ~ ~0.5 ~ 0.5 0.5 0.5 0.1 50 normal
