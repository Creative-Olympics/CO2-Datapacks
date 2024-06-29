scoreboard players reset @s prophunt.drop

execute unless score @s prophunt.prop_switch_cooldown matches 1.. run return run function prophunt:prop/abilities/switch_type/start
playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0
