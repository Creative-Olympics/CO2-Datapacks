clear @s
$item replace entity @s hotbar.4 with minecraft:compass[ \
  minecraft:enchantment_glint_override=false, \
  minecraft:item_name='[{"text":"Next checkpoint","color":"dark_purple","bold":true,"italic":true}]', \
  minecraft:lodestone_tracker={target:{pos:$(pos),dimension:"minecraft:overworld"},tracked:false}, \
]

item replace entity @s hotbar.8 with minecraft:barrier[ \
  minecraft:item_name='["",{"text":"Leave game","color":"red","bold":true,"italic":true},{"text":" - Right click","color":"gray"}]', \
  minecraft:food={nutrition:0,saturation:0.0,eat_seconds:1000000000,can_always_eat:true}, \
  minecraft:custom_data={jump:true}, \
]
