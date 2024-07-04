# Remove cosmetic from inventory if theire removed (not on the solt they are mean to be)

# Mask Covid-19BC
#execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:5},Slot:103b}] if data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:5}}] run clear @s carved_pumpkin{display:{Name:'{"text":"Surgical mask","color":"aqua"}',Lore:['{"text":"To protect yourself against COVID-19BC"}']},HideFlags:127,CustomModelData:5}

# Antique Mask
#execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:1},Slot:103b}] if data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:1}}] run clear @s carved_pumpkin{display:{Name:'{"text":"Antique mask","color":"#AF8954","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Is it a masked ball?","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:1}

# Laurel wreath
#execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:2},Slot:103b}] if data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:2}}] run clear @s carved_pumpkin{display:{Name:'{"text":"Laurel wreath","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Your fame deserves a crown!","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:2}

# Egyptian Amulet
#execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:4},Slot:103b}] if data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:4}}] run clear @s carved_pumpkin{display:{Name:'{"text":"Egyptian amulet","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The legend has it that a mystical power is hidden inside","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:4}

# Spartan Helmet
#execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:3},Slot:103b}] if data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:3}}] run clear @s carved_pumpkin{display:{Name:'{"text":"Spartan helmet","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"You are the elite of the army!","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:3}
