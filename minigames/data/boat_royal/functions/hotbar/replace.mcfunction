clear @s
item replace entity @s inventory.8 with arrow
loot replace entity @s hotbar.0 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:bow","functions":[{"function":"minecraft:set_components","components":{"minecraft:enchantment_glint_override":false,"!minecraft:damage":{},"minecraft:enchantments":{"levels":{"minecraft:infinity":1},"show_in_tooltip":false}}}]}]}]}
loot replace entity @s hotbar.1 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:crossbow","functions":[{"function":"minecraft:set_components","components":{"minecraft:enchantment_glint_override":false,"!minecraft:damage":{},"minecraft:enchantments":{"levels":{"minecraft:infinity":1,"minecraft:multishot":1},"show_in_tooltip":false}}}]}]}]}
