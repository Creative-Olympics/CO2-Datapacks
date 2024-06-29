clear @s
loot replace entity @s hotbar.4 loot jump:compass
$item modify entity @s hotbar.4 {"function":"minecraft:set_components","components":{"minecraft:lodestone_tracker":{"tracker":{"dimension":"minecraft:overworld","pos":$(pos)},"tracked":false}}}
loot replace entity @s hotbar.8 loot jump:barrier
