
# Get price
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation #price ctx = @s wallstreet.wood_price
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation #price ctx = @s wallstreet.stone_price
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation #price ctx = @s wallstreet.leather_price
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation #price ctx = @s wallstreet.iron_price
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation #price ctx = @s wallstreet.diamond_price
scoreboard players operation #price ctx *= 1000 const

# Get quantity
scoreboard players operation #quantity ctx = @s wallstreet.selected_quantity

# Update villager quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation @s wallstreet.wood_current_stock += #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation @s wallstreet.stone_current_stock += #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation @s wallstreet.leather_current_stock += #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation @s wallstreet.iron_current_stock += #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation @s wallstreet.diamond_current_stock += #quantity ctx

# Get average bought price
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation #average_value ctx = @p[tag=wallstreet.villager.client] wallstreet.wood_price
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation #average_value ctx = @p[tag=wallstreet.villager.client] wallstreet.stone_price
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation #average_value ctx = @p[tag=wallstreet.villager.client] wallstreet.leather_price
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation #average_value ctx = @p[tag=wallstreet.villager.client] wallstreet.iron_price
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation #average_value ctx = @p[tag=wallstreet.villager.client] wallstreet.diamond_price

# Update player quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.wood_current_stock -= #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=1}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.stone_current_stock -= #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=2}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.leather_current_stock -= #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=3}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.iron_current_stock -= #quantity ctx
execute if entity @s[scores={wallstreet.selected_resource=4}] run scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.diamond_current_stock -= #quantity ctx

# Update player budget
scoreboard players operation #billing_3 ctx = #quantity ctx
scoreboard players operation #billing_3 ctx *= #price ctx
scoreboard players operation #billing ctx = #billing_3 ctx
scoreboard players operation #billing ctx /= 1000 const
scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.budget += #billing ctx

scoreboard players operation #profit ctx = #quantity ctx
scoreboard players operation #profit ctx *= #average_value ctx
scoreboard players operation #profit ctx *= -1 const
scoreboard players operation #profit ctx /= 1000 const
scoreboard players operation #profit ctx += #billing ctx

# Relative diff
scoreboard players operation #diff ctx = #billing_3 ctx
scoreboard players operation #diff ctx /= #quantity ctx
scoreboard players operation #diff ctx *= 100 const
scoreboard players operation #diff ctx /= #average_value ctx
scoreboard players operation #diff ctx -= 100 const

scoreboard players operation #profit_abs ctx = #profit ctx
execute if score #profit ctx matches ..-1 run scoreboard players operation #profit_abs ctx *= -1 const

execute if score #profit ctx matches 1.. at @p[tag=wallstreet.villager.client] run playsound entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1 0
execute if score #profit ctx matches 1.. as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^0.5 ^1.3 run summon text_display ~ ~ ~ {text:'[{"text":"YOU MADE ","color":"green","bold":true,"italic":true},{"score":{"name":"#profit","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":" PROFIT!","color":"green","bold":true,"italic":true},{"text":" (+","color":"green","bold":false,"italic":false},{"score":{"name":"#diff","objective":"ctx"},"color":"green","bold":false,"italic":false},{"text":"%)","color":"green","bold":false,"italic":false}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.benefits"],background:1677721600,teleport_duration:1}
execute if score #profit ctx matches ..-1 at @p[tag=wallstreet.villager.client] run playsound entity.villager.hurt master @a[distance=..10] ~ ~ ~ 1 1 0
execute if score #profit ctx matches ..-1 as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^0.5 ^1.3 run summon text_display ~ ~ ~ {text:'[{"text":"YOU LOST ","color":"red","bold":true,"italic":true},{"score":{"name":"#profit_abs","objective":"ctx"},"color":"tellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":" (","color":"red","bold":false,"italic":false},{"score":{"name":"#diff","objective":"ctx"},"color":"red","bold":false,"italic":false},{"text":"%)","color":"red","bold":false,"italic":false}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.benefits"],background:1677721600,teleport_duration:1}

execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}

execute if entity @s[scores={wallstreet.selected_resource=0}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=1}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=2}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=3}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=4}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}

execute as @a[team=wallstreet] at @s run playsound minecraft:block.sand.step master @s ~ ~ ~ 0.5 2 0

execute if entity @s[scores={wallstreet.selected_resource=0}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=1}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=2}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=3}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false} \
]

execute if entity @s[scores={wallstreet.selected_resource=4}] run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"gray","bold":false,"italic":false}, \
    {"text":" sold ","color":"gray","bold":false,"italic":false}, \
    {"score":{"name":"@s","objective":"wallstreet.selected_quantity"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"  ","color":"white","bold":false,"italic":false}, \
    {"text":"to ","color":"gray","bold":false,"italic":false}, \
    {"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false} \
]

execute if score #profit ctx matches 1.. run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"green","bold":false,"italic":false}, \
    {"text":" made ","color":"green","bold":false,"italic":false}, \
    {"score":{"name":"#profit","objective":"ctx"},"color":"yellow","bold":true,"italic":true}, \
    {"text":" ","color":"white","bold":false,"italic":false}, \
    {"text":"profit!","color":"green","bold":false,"italic":false}, \
    {"text":" (+","color":"green","bold":false,"italic":false}, \
    {"score":{"name":"#diff","objective":"ctx"},"color":"green","bold":false,"italic":false}, \
    {"text":"%)","color":"green","bold":false,"italic":false} \
]

execute if score #profit ctx matches ..-1 run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"red","bold":false,"italic":false}, \
    {"text":" lost ","color":"red","bold":false,"italic":false}, \
    {"score":{"name":"#profit_abs","objective":"ctx"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"","color":"white","bold":false,"italic":false}, \
    {"text":" (","color":"red","bold":false,"italic":false}, \
    {"score":{"name":"#diff","objective":"ctx"},"color":"red","bold":false,"italic":false}, \
    {"text":"%)","color":"red","bold":false,"italic":false} \
]

