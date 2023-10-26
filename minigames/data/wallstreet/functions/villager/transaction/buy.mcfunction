
# Old quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation #old_quantity ctx = @p[tag=wallstreet.villager.client] wallstreet.wood_current_stock
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation #old_quantity ctx = @p[tag=wallstreet.villager.client] wallstreet.stone_current_stock
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation #old_quantity ctx = @p[tag=wallstreet.villager.client] wallstreet.leather_current_stock
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation #old_quantity ctx = @p[tag=wallstreet.villager.client] wallstreet.iron_current_stock
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation #old_quantity ctx = @p[tag=wallstreet.villager.client] wallstreet.diamond_current_stock

# Old price
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation #old_price ctx = @p[tag=wallstreet.villager.client] wallstreet.wood_price
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation #old_price ctx = @p[tag=wallstreet.villager.client] wallstreet.stone_price
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation #old_price ctx = @p[tag=wallstreet.villager.client] wallstreet.leather_price
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation #old_price ctx = @p[tag=wallstreet.villager.client] wallstreet.iron_price
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation #old_price ctx = @p[tag=wallstreet.villager.client] wallstreet.diamond_price

# New quantity
scoreboard players operation #new_quantity ctx = @s wallstreet.selected_quantity

# New price
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation #new_price ctx = @s wallstreet.wood_price
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation #new_price ctx = @s wallstreet.stone_price
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation #new_price ctx = @s wallstreet.leather_price
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation #new_price ctx = @s wallstreet.iron_price
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation #new_price ctx = @s wallstreet.diamond_price

scoreboard players operation #new_price ctx *= 1000 const

# Computing the new average price
scoreboard players operation #old ctx = #old_quantity ctx
scoreboard players operation #old ctx *= #old_price ctx

scoreboard players operation #new ctx = #new_quantity ctx
scoreboard players operation #new ctx *= #new_price ctx

scoreboard players operation #weighted_sum ctx = #old ctx
scoreboard players operation #weighted_sum ctx += #new ctx

scoreboard players operation #total_weights ctx = #old_quantity ctx
scoreboard players operation #total_weights ctx += #new_quantity ctx

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
scoreboard players operation #billing ctx = #new_quantity ctx
scoreboard players operation #billing ctx *= #new_price ctx
scoreboard players operation #billing ctx /= 1000 const
scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.budget -= #billing ctx

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