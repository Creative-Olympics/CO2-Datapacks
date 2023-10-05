
# Get price
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation #price tmp = @s wallstreet.wood_price

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation #price tmp = @s wallstreet.stone_price

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation #price tmp = @s wallstreet.leather_price

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation #price tmp = @s wallstreet.iron_price

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation #price tmp = @s wallstreet.diamond_price

# Get quantity
scoreboard players operation #quantity tmp = @s wallstreet.selected_quantity

# Update villager quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation @s wallstreet.wood_quantity += #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation @s wallstreet.stone_quantity += #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation @s wallstreet.leather_quantity += #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation @s wallstreet.iron_quantity += #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation @s wallstreet.diamond_quantity += #quantity tmp

# Get average bought price
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation #average_value tmp = @p[tag=wallstreet.villager.client] wallstreet.wood_price

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation #average_value tmp = @p[tag=wallstreet.villager.client] wallstreet.stone_price

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation #average_value tmp = @p[tag=wallstreet.villager.client] wallstreet.leather_price

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation #average_value tmp = @p[tag=wallstreet.villager.client] wallstreet.iron_price

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation #average_value tmp = @p[tag=wallstreet.villager.client] wallstreet.diamond_price

# Update player quantity
execute if entity @s[scores={wallstreet.selected_resource=0}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.wood_quantity -= #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=1}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.stone_quantity -= #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=2}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.leather_quantity -= #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=3}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.iron_quantity -= #quantity tmp

execute if entity @s[scores={wallstreet.selected_resource=4}] run \
    scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.diamond_quantity -= #quantity tmp

# Update player budget
scoreboard players operation #billing tmp = #quantity tmp
scoreboard players operation #billing tmp *= #price tmp
scoreboard players operation @p[tag=wallstreet.villager.client] wallstreet.budget += #billing tmp

scoreboard players operation #profit tmp = #quantity tmp
scoreboard players operation #profit tmp *= #average_value tmp
scoreboard players operation #profit tmp *= -1 const
scoreboard players operation #profit tmp += #billing tmp

scoreboard players operation #profit_abs tmp = #profit tmp
execute if score #profit tmp matches ..-1 run scoreboard players operation #profit_abs tmp *= -1 const

execute if score #profit tmp matches 1.. at @p[tag=wallstreet.villager.client] run playsound entity.player.levelup master @a[distance=..10] ~ ~ ~ 1 1 0
execute if score #profit tmp matches 1.. as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^0.5 ^1.3 run summon text_display ~ ~ ~ {text:'[{"text":"YOU MADE ","color":"green","bold":true,"italic":true},{"score":{"name":"#profit","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":" PROFIT!","color":"green","bold":true,"italic":true}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.benefits"],background:1677721600,teleport_duration:1}
execute if score #profit tmp matches ..-1 at @p[tag=wallstreet.villager.client] run playsound entity.villager.hurt master @a[distance=..10] ~ ~ ~ 1 1 0
execute if score #profit tmp matches ..-1 as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^0.5 ^1.3 run summon text_display ~ ~ ~ {text:'[{"text":"YOU LOST ","color":"red","bold":true,"italic":true},{"score":{"name":"#profit_abs","objective":"tmp"},"color":"tellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.benefits"],background:1677721600,teleport_duration:1}

execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^-0.2 ^-0.3 ^1 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.get"],background:0,teleport_duration:1}

execute if entity @s[scores={wallstreet.selected_resource=0}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=1}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=2}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=3}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}
execute if entity @s[scores={wallstreet.selected_resource=4}] as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^0.2 ^-0.3 ^2 run summon text_display ~ ~ ~ {text:'{"text":""}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},Tags:["wallstreet.villager.gui","wallstreet.villager.gui.new","wallstreet.villager.gui.give"],background:0,teleport_duration:1}

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

execute if score #profit tmp matches 1.. run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"green","bold":false,"italic":false}, \
    {"text":" made ","color":"green","bold":false,"italic":false}, \
    {"score":{"name":"#profit","objective":"tmp"},"color":"yellow","bold":true,"italic":true}, \
    {"text":" ","color":"white","bold":false,"italic":false}, \
    {"text":"profit!","color":"green","bold":false,"italic":false} \
]

execute if score #profit tmp matches ..-1 run tellraw @a[team=wallstreet] [ \
    {"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true}, \
    {"selector":"@p[tag=wallstreet.villager.client]","color":"red","bold":false,"italic":false}, \
    {"text":" lost ","color":"red","bold":false,"italic":false}, \
    {"score":{"name":"#profit_abs","objective":"tmp"},"color":"yellow","bold":true,"italic":true}, \
    {"text":"","color":"white","bold":false,"italic":false} \
]

