
function wallstreet:villager/
function wallstreet:inventory/
function wallstreet:compass/

execute store result score #wallstreet.timer.seconds data \
        store result score #wallstreet.timer.modulo data \
    run scoreboard players get #wallstreet.timer data

scoreboard players operation #wallstreet.timer.seconds data /= 20 const

execute store result score #wallstreet.timer.minutes data \
    run scoreboard players add #wallstreet.timer.seconds data 1

scoreboard players operation #wallstreet.timer.seconds data %= 60 const
scoreboard players operation #wallstreet.timer.minutes data /= 60 const
scoreboard players operation #wallstreet.timer.modulo data %= 20 const

function #bs.sidebar:refresh {id:"wallstreet"}

scoreboard players remove #wallstreet.timer data 1

scoreboard players operation #wallstreet.time_left.modulo data = #wallstreet.timer data
scoreboard players operation #wallstreet.time_left.modulo data %= 20 const
execute if score #wallstreet.timer data matches 1..1200 if score #wallstreet.time_left.modulo data matches 0 as @a[team=wallstreet] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 2 0
execute if score #wallstreet.timer data matches 1..200 if score #wallstreet.time_left.modulo data matches 0 as @a[team=wallstreet] at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2 0
execute if score #wallstreet.timer data matches 100 run function #bs.sidebar:destroy {id:"wallstreet"}
execute if score #wallstreet.timer data matches 100 run function #bs.sidebar:create { \
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
        '[{"text":" Time left: ","color":"red","bold":true,"italic":true},{"score":{"name":"#wallstreet.timer.minutes","objective":"data"},"color":"red","bold":true,"italic":true},{"text":"m ","color":"red","bold":true,"italic":true},{"score":{"name":"#wallstreet.timer.seconds","objective":"data"},"color":"red","bold":true,"italic":true},{"text":"s","color":"red","bold":true,"italic":true}]', \
        '{"text":" "}' \
    ], \
}
execute if score #wallstreet.timer data matches 100 run scoreboard objectives setdisplay sidebar.team.yellow bs.sidebar.wallstreet


execute if score #wallstreet.timer data matches ..0 run function #wallstreet:end_game