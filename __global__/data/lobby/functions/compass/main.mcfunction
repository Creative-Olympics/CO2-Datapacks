
# Count number of compass
execute as @a[team=lobby] store result score @s tmp run clear @s compass 0

# If player dropped his compass -> cycle forward
scoreboard players add @a[team=lobby,scores={lobby.compass.drop_trigger=1..,tmp=0}] lobby.compass.select 1
execute as @a[team=lobby,scores={lobby.compass.drop_trigger=1..,tmp=0}] at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 2 0
scoreboard players reset * lobby.compass.drop_trigger
# If the player swapped it from hands -> cycle backward
scoreboard players remove @a[team=lobby,scores={tmp=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] lobby.compass.select 1
execute as @a[team=lobby,scores={tmp=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] at @s run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
clear @a[team=lobby,scores={tmp=1},nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] compass

# Remove compass if duplicated
execute as @a[team=lobby,scores={tmp=2..}] run clear @s compass

# Recompute number of compass
execute as @a[team=lobby] store result score @s tmp run clear @s compass 0

# Cycle limits
scoreboard players set @a[team=lobby,scores={lobby.compass.select=5..}] lobby.compass.select 0
scoreboard players set @a[team=lobby,scores={lobby.compass.select=..-1}] lobby.compass.select 4

# Give compass ----------------------------------------------------------------

# Jump
item replace entity @a[team=lobby,scores={tmp=0,lobby.compass.select=0}] hotbar.8 with compass{display:{Name:'{"text":"JUMP","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"This compass indicate the minigame location","color":"white","italic":false}','{"text":"Drop item to select the next minigame","color":"white","italic":false}','{"text":"Swap it from hands to select the previous one","color":"white","italic":false}']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:-311,Y:97,Z:19},HideFlags:255}

# Magma run
item replace entity @a[team=lobby,scores={tmp=0,lobby.compass.select=1}] hotbar.8 with compass{display:{Name:'{"text":"MAGMA RUN","color":"gold","bold":true,"italic":true}',Lore:['{"text":"This compass indicate the minigame location","color":"white","italic":false}','{"text":"Drop item to select the next minigame","color":"white","italic":false}','{"text":"Swap it from hands to select the previous one","color":"white","italic":false}']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:-216,Y:100,Z:17},HideFlags:255}

# One in the chamber
item replace entity @a[team=lobby,scores={tmp=0,lobby.compass.select=2}] hotbar.8 with compass{display:{Name:'{"text":"ONE IN THE CHAMBER","color":"red","bold":true,"italic":true}',Lore:['{"text":"This compass indicate the minigame location","color":"white","italic":false}','{"text":"Drop item to select the next minigame","color":"white","italic":false}','{"text":"Swap it from hands to select the previous one","color":"white","italic":false}']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:-184,Y:97,Z:-97},HideFlags:255}

# Prophunt
item replace entity @a[team=lobby,scores={tmp=0,lobby.compass.select=3}] hotbar.8 with compass{display:{Name:'{"text":"PROPHUNT","color":"blue","bold":true,"italic":true}',Lore:['{"text":"This compass indicate the minigame location","color":"white","italic":false}','{"text":"Drop item to select the next minigame","color":"white","italic":false}','{"text":"Swap it from hands to select the previous one","color":"white","italic":false}']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:112,Y:82,Z:66},HideFlags:255}

# Dropper
item replace entity @a[team=lobby,scores={tmp=0,lobby.compass.select=4}] hotbar.8 with compass{display:{Name:'{"text":"DROPPER","color":"green","bold":true,"italic":true}',Lore:['{"text":"This compass indicate the minigame location","color":"white","italic":false}','{"text":"Drop item to select the next minigame","color":"white","italic":false}','{"text":"Swap it from hands to select the previous one","color":"white","italic":false}']},LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:123,Y:99,Z:9},HideFlags:255}
