execute if score @s jump.animation matches 1 run summon husk ~ ~ ~ {NoAI:1,Silent:1,Tags:["jump.animation","jump.animation.new"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}

scoreboard players operation @e[type=husk,tag=jump.animation.new] parentId = @s id

data modify entity @e[type=husk,tag=jump.animation.new,limit=1] Rotation[1] set from entity @s Rotation[1]
data modify entity @e[type=husk,tag=jump.animation.new,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=husk,tag=jump.animation.new,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=husk,tag=jump.animation.new,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]

data merge block -1 50 -1 {Text1:"{\"selector\":\"@s\"}"}
data modify entity @e[type=husk,tag=jump.animation.new,limit=1] CustomName set from block -1 50 -1 Text1
loot replace entity @e[type=husk,tag=jump.animation.new] armor.head loot mg:givehead
data modify entity @e[type=husk,tag=jump.animation.new,limit=1] ArmorItem[3].tag.SkullOwner.Name set from block -1 50 -1 Text1.insertion
