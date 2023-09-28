# Executed globally
# tellraw @a {"text":"oitc:start"}

# Abort if a game is already started
# execute if score #OITC_game_started data matches 1 run return 1



# Setup players
scoreboard objectives setdisplay sidebar.team.red oitc_kills
scoreboard players set @a[team=oitc] oitc_kills 0
scoreboard players set @a[team=oitc] oitc_kills_memory 0
scoreboard players set @a[team=oitc] oitc_time_since_death 100
gamemode adventure @a[team=oitc]
effect clear @a[team=oitc]
effect give @a[team=oitc] minecraft:regeneration infinite 255 true
clear @a[team=oitc]

# Give items
give @a[team=oitc] bow{display:{Name:'{"text":"One in the chamber","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Use this crossbow to one-shot your opponents"}']},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:127s},{id:"minecraft:power",lvl:127s}]} 1
give @a[team=oitc] wooden_sword{display:{Name:'{"text":"For when you are fucked...","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"This is your chance to kill enemies without arrow...\\nThere is a knockback but it deals more damage\\nthan your hand so it\'s up to you to decide what\\ndesesperate weapon you want to use."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]} 1
give @a[team=oitc] arrow{display:{Name:'{"text":"Your only hope","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"This is your only arrow, aim well."}']}} 1
item replace entity @a[team=oitc] armor.head with leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1
item replace entity @a[team=oitc] armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1
item replace entity @a[team=oitc] armor.legs with leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1
item replace entity @a[team=oitc] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:127s}]} 1

# Remove start blocks
setblock -184 97 -96 air destroy
setblock -184 97 -97 air destroy

# Setup global variables
scoreboard players set #OITC:game_started data 1
scoreboard players set #OITC:end_game_timer data 0