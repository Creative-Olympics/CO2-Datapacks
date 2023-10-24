
function wallstreet:start/load_config

scoreboard players set #wallstreet.game_started data 1
scoreboard players operation #wallstreet.timer data = #wallstreet.game_time data

function wallstreet:economy_model/get_global_stocks
function wallstreet:economy_model/get_global_prices
function wallstreet:villager/summon/all

execute at @e[tag=lib.start_animation.wallstreet] run team join wallstreet @a[distance=..13]

clear @a[team=wallstreet]
scoreboard players set @a[team=wallstreet] wallstreet.budget 5000

scoreboard players set @a[team=wallstreet] wallstreet.wood_price 0
scoreboard players set @a[team=wallstreet] wallstreet.stone_price 0
scoreboard players set @a[team=wallstreet] wallstreet.leather_price 0
scoreboard players set @a[team=wallstreet] wallstreet.iron_price 0
scoreboard players set @a[team=wallstreet] wallstreet.diamond_price 0

scoreboard players set @a[team=wallstreet] wallstreet.wood_quantity 0
scoreboard players set @a[team=wallstreet] wallstreet.stone_quantity 0
scoreboard players set @a[team=wallstreet] wallstreet.leather_quantity 0
scoreboard players set @a[team=wallstreet] wallstreet.iron_quantity 0
scoreboard players set @a[team=wallstreet] wallstreet.diamond_quantity 0

execute as @a[team=wallstreet] run function #global:animated_title {type:"start"}

scoreboard players operation #wallstreet.model.wood_global_price_rounded data = #wallstreet.model.wood_global_price data
scoreboard players operation #wallstreet.model.stone_global_price_rounded data = #wallstreet.model.stone_global_price data
scoreboard players operation #wallstreet.model.leather_global_price_rounded data = #wallstreet.model.leather_global_price data
scoreboard players operation #wallstreet.model.iron_global_price_rounded data = #wallstreet.model.iron_global_price data
scoreboard players operation #wallstreet.model.diamond_global_price_rounded data = #wallstreet.model.diamond_global_price data

scoreboard players operation #wallstreet.model.wood_global_price_rounded data /= 1000 const
scoreboard players operation #wallstreet.model.stone_global_price_rounded data /= 1000 const
scoreboard players operation #wallstreet.model.leather_global_price_rounded data /= 1000 const
scoreboard players operation #wallstreet.model.iron_global_price_rounded data /= 1000 const
scoreboard players operation #wallstreet.model.diamond_global_price_rounded data /= 1000 const

# Register a new sidebar
function #bs.sidebar:create { \
    id:"wallstreet", \
    name:'{"text":"WALL STREET","color":"yellow","bold":true,"italic":true}', \
    contents: [ \
        '{"text":" "}', \
        '{"text":" Market price index:","color":"white"}', \
        '{"text":" "}', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.wood_global_price_rounded","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.stone_global_price_rounded","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.leather_global_price_rounded","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.iron_global_price_rounded","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.diamond_global_price_rounded","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '{"text":" "}', \
        '[{"text":" Time left: ","color":"white"},{"score":{"name":"#wallstreet.timer.minutes","objective":"data"}},{"text":"m ","color":"white"},{"score":{"name":"#wallstreet.timer.seconds","objective":"data"}},{"text":"s","color":"white"}]', \
        '{"text":" "}' \
    ], \
}

scoreboard objectives setdisplay sidebar.team.yellow bs.sidebar.wallstreet
