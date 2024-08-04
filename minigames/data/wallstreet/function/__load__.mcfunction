scoreboard objectives add wallstreet.wood_price dummy
scoreboard objectives add wallstreet.stone_price dummy
scoreboard objectives add wallstreet.leather_price dummy
scoreboard objectives add wallstreet.iron_price dummy
scoreboard objectives add wallstreet.diamond_price dummy

scoreboard objectives add wallstreet.wood_current_stock dummy
scoreboard objectives add wallstreet.stone_current_stock dummy
scoreboard objectives add wallstreet.leather_current_stock dummy
scoreboard objectives add wallstreet.iron_current_stock dummy
scoreboard objectives add wallstreet.diamond_current_stock dummy

scoreboard objectives add wallstreet.wood_max_stock dummy
scoreboard objectives add wallstreet.stone_max_stock dummy
scoreboard objectives add wallstreet.leather_max_stock dummy
scoreboard objectives add wallstreet.iron_max_stock dummy
scoreboard objectives add wallstreet.diamond_max_stock dummy

scoreboard objectives add wallstreet.selected_quantity dummy
scoreboard objectives add wallstreet.selected_resource dummy
scoreboard objectives add wallstreet.budget dummy
scoreboard objectives add wallstreet.wood_price dummy

scoreboard objectives add wallstreet.compass_id dummy
scoreboard objectives add wallstreet.villager_id dummy
scoreboard objectives add wallstreet.selected_item dummy


team add wallstreet
team modify wallstreet color yellow


scoreboard objectives remove wallstreet.sidebar
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
