# Executed globally
tellraw @a {"text":"oitc:start"}

# Abort if a game is already started
# execute if score #OITC_game_started data matches 1 run return 1

# Setup map
fill -194 99 -75 -192 101 -75 barrier replace air
fill -194 98 -75 -192 98 -75 mangrove_fence replace air

fill -166 98 -92 -166 99 -96 barrier replace air
fill -166 97 -92 -166 97 -96 mangrove_fence replace air

fill -206 98 -90 -206 103 -97 barrier replace air
fill -206 97 -90 -206 97 -97 mangrove_fence replace air

fill -183 98 -106 -178 99 -106 barrier replace air
fill -183 97 -106 -178 97 -106 mangrove_fence replace air

fill -194 98 -106 -194 99 -106 barrier replace air
fill -194 97 -106 -194 97 -106 mangrove_fence replace air

# Setup players
team join oitc @a
scoreboard objectives setdisplay sidebar.team.red oitc_kills
scoreboard players set @a[team=oitc] oitc_kills 0
scoreboard players set @a[team=oitc] oitc_kills_memory 0
scoreboard players set @a[team=oitc] oitc_time_since_death 100
gamemode adventure @a[team=oitc]
effect give @a[team=oitc] minecraft:regeneration 1 255 true
clear @a[team=oitc]

# Give items
give @a[team=oitc] bow{display:{Name:'{"text":"One in the chamber","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Use this crossbow to one-shot your opponents"}']},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:127s},{id:"minecraft:power",lvl:127s}]} 1
give @a wooden_sword{display:{Name:'{"text":"For when you are fucked...","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"This is your chance to kill enemies without arrow...\\nThere is a knockback but it deals more damage\\nthan your hand so it\'s up to you to decide what\\ndesesperate weapon you want to use."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]} 1
give @a[team=oitc] arrow{display:{Name:'{"text":"Your only hope","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"This is your only arrow, aim well."}']}} 1
item replace entity @a armor.head with leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1
item replace entity @a armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1
item replace entity @a armor.legs with leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1
item replace entity @a armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1

# Setup global variables
scoreboard players set #OITC:game_started data 1
scoreboard players set #OITC:end_game_timer data 0