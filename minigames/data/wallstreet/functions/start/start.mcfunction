
scoreboard players set #wallstreet.game_started data 1

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

# Register a new sidebar
function #bs.sidebar:create { \
    id:"wallstreet", \
    name:'{"text":"WALL STREET","color":"yellow","bold":true,"italic":true}', \
    contents: [ \
        '{"text":" "}', \
        '{"text":" Global market prices:","color":"white"}', \
        '{"text":" "}', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"$global","objective":"wallstreet.wood_price"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"$global","objective":"wallstreet.stone_price"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"$global","objective":"wallstreet.leather_price"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"$global","objective":"wallstreet.iron_price"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '[{"text":"   ","color":"white","bold":false},{"score":{"name":"$global","objective":"wallstreet.diamond_price"},"color":"yellow","bold":true},{"text":"","color":"white","bold":false},{"text":"/item","color":"gray","bold":false}]', \
        '{"text":" "}' \
    ], \
}

scoreboard objectives setdisplay sidebar.team.yellow bs.sidebar.wallstreet
