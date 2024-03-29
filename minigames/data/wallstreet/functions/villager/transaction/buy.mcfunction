

function wallstreet:villager/utils/get_transaction_value
function wallstreet:villager/utils/get_client_purchase_price
function wallstreet:villager/utils/get_client_stock

# Computing the new average price
scoreboard players operation #old ctx = #client_stock ctx
scoreboard players operation #old ctx *= #purchase_price ctx

scoreboard players operation #purchase_price ctx = #transaction_value ctx
scoreboard players operation #purchase_price ctx *= 1000 const
scoreboard players operation #purchase_price ctx /= #quantity ctx

scoreboard players operation #new ctx = #quantity ctx
scoreboard players operation #new ctx *= #purchase_price ctx

scoreboard players operation #weighted_sum ctx = #old ctx
scoreboard players operation #weighted_sum ctx += #new ctx

scoreboard players operation #total_weights ctx = #client_stock ctx
scoreboard players operation #total_weights ctx += #quantity ctx

scoreboard players operation #average_price ctx = #weighted_sum ctx
scoreboard players operation #average_price ctx /= #total_weights ctx

# Set the new player quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.wood_current_stock += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.stone_current_stock += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.leather_current_stock += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.iron_current_stock += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.diamond_current_stock += @s wallstreet.selected_quantity

# Set the new player average resource price
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.wood_price = #average_price ctx
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.stone_price = #average_price ctx
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.leather_price = #average_price ctx
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.iron_price = #average_price ctx
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.diamond_price = #average_price ctx

# Remove player coins
scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.budget -= #transaction_value ctx

# Remove villager quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation @s wallstreet.wood_current_stock -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation @s wallstreet.stone_current_stock -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation @s wallstreet.leather_current_stock -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation @s wallstreet.iron_current_stock -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation @s wallstreet.diamond_current_stock -= @s wallstreet.selected_quantity


execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}

execute if entity @s[scores={wallstreet.selected_resource=0}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=1}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=2}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=3}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=4}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}

execute as @a[team=wallstreet] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0

execute if entity @s[scores={wallstreet.selected_resource=0}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=1}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=2}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=3}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=4}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false} \
]