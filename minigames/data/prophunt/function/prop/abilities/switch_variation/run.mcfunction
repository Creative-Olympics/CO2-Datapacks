scoreboard players set @s prophunt.prop_variation_cooldown 10
scoreboard players operation @s prophunt.prop_variation = #result data
ride @s dismount
execute at @s run function prophunt:prop/display/refresh
