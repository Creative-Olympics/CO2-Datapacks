
# Old quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation #old_quantity tmp = @p[tag=wallstreet.villager.client] wallstreet.wood_quantity

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation #old_quantity tmp = @p[tag=wallstreet.villager.client] wallstreet.stone_quantity

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation #old_quantity tmp = @p[tag=wallstreet.villager.client] wallstreet.leather_quantity

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation #old_quantity tmp = @p[tag=wallstreet.villager.client] wallstreet.iron_quantity

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation #old_quantity tmp = @p[tag=wallstreet.villager.client] wallstreet.diamond_quantity

# Old price
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation #old_price tmp = @p[tag=wallstreet.villager.client] wallstreet.wood_price

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation #old_price tmp = @p[tag=wallstreet.villager.client] wallstreet.stone_price

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation #old_price tmp = @p[tag=wallstreet.villager.client] wallstreet.leather_price

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation #old_price tmp = @p[tag=wallstreet.villager.client] wallstreet.iron_price

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation #old_price tmp = @p[tag=wallstreet.villager.client] wallstreet.diamond_price

# New quantity
scoreboard players operation #new_quantity tmp = @s wallstreet.selected_quantity

# New price
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation #new_price tmp = @s wallstreet.wood_price

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation #new_price tmp = @s wallstreet.stone_price

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation #new_price tmp = @s wallstreet.leather_price

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation #new_price tmp = @s wallstreet.iron_price

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation #new_price tmp = @s wallstreet.diamond_price

# Computing the new average price
scoreboard players operation #old tmp = #old_quantity tmp
scoreboard players operation #old tmp *= #old_price tmp

scoreboard players operation #new tmp = #new_quantity tmp
scoreboard players operation #new tmp *= #new_price tmp

scoreboard players operation #weighted_sum tmp = #old tmp
scoreboard players operation #weighted_sum tmp += #new tmp

scoreboard players operation #total_weights tmp = #old_quantity tmp
scoreboard players operation #total_weights tmp += #new_quantity tmp

scoreboard players operation #average_price tmp = #weighted_sum tmp
scoreboard players operation #average_price tmp /= #total_weights tmp

# Set the new player quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.wood_quantity += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.stone_quantity += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.leather_quantity += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.iron_quantity += @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.diamond_quantity += @s wallstreet.selected_quantity

# Set the new player average resource price
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.wood_price = #average_price tmp
execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.stone_price = #average_price tmp
execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.leather_price = #average_price tmp
execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.iron_price = #average_price tmp
execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.diamond_price = #average_price tmp

# Remove player coins
scoreboard players operation #billing tmp = #new_quantity tmp
scoreboard players operation #billing tmp *= #new_price tmp
scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.budget -= #billing tmp

# Remove villager quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation @s wallstreet.wood_quantity -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation @s wallstreet.stone_quantity -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation @s wallstreet.leather_quantity -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation @s wallstreet.iron_quantity -= @s wallstreet.selected_quantity
execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation @s wallstreet.diamond_quantity -= @s wallstreet.selected_quantity


execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}

execute if entity @s[scores={wallstreet.selected_resource=0}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=1}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=2}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=3}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=4}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}

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