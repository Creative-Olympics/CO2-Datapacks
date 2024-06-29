
function wallstreet:start/load_config

scoreboard players set #wallstreet.game_started data 1
scoreboard players operation #wallstreet.timer data = #wallstreet.game_time data

function wallstreet:economy_model/get_global_data
function wallstreet:villager/summon/all

execute at @e[tag=lib.start_animation.wallstreet] run team join wallstreet @a[distance=..13]

clear @a[team=wallstreet]
scoreboard players set @a[team=wallstreet] wallstreet.budget 5000

scoreboard players set @a[team=wallstreet] wallstreet.wood_price 0
scoreboard players set @a[team=wallstreet] wallstreet.stone_price 0
scoreboard players set @a[team=wallstreet] wallstreet.leather_price 0
scoreboard players set @a[team=wallstreet] wallstreet.iron_price 0
scoreboard players set @a[team=wallstreet] wallstreet.diamond_price 0

scoreboard players set @a[team=wallstreet] wallstreet.wood_current_stock 0
scoreboard players set @a[team=wallstreet] wallstreet.stone_current_stock 0
scoreboard players set @a[team=wallstreet] wallstreet.leather_current_stock 0
scoreboard players set @a[team=wallstreet] wallstreet.iron_current_stock 0
scoreboard players set @a[team=wallstreet] wallstreet.diamond_current_stock 0

execute as @a[team=wallstreet] run function #lib:animated_title {type:"start"}

# Register a new sidebar
function #bs.sidebar:create { \
    objective:"wallstreet.sidebar", \
    display_name:'{"text":"WALL STREET","color":"yellow","bold":true,"italic":true}', \
    contents: [ \
        '{"text":" "}', \
        '{"text":" Market price index: ","color":"white"}', \
        '{"text":" "}', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.wood.price_index","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.stone.price_index","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.leather.price_index","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.iron.price_index","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"#wallstreet.model.diamond.price_index","objective":"data"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '{"text":" "}', \
        '[{"text":" Time left: ","color":"white"},{"score":{"name":"#wallstreet.timer.minutes","objective":"data"}},{"text":"m ","color":"white"},{"score":{"name":"#wallstreet.timer.seconds","objective":"data"}},{"text":"s","color":"white"}]', \
        '{"text":" "}' \
    ], \
}

scoreboard objectives setdisplay sidebar.team.yellow wallstreet.sidebar

function wallstreet:music/start


effect give @a[team=wallstreet] resistance infinite 127 true
effect give @a[team=wallstreet] regeneration infinite 127 true
effect give @a[team=wallstreet] weakness infinite 127 true
