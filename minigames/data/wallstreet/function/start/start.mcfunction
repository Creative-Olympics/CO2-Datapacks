scoreboard players set $wallstreet.game_started data 1
scoreboard players operation $wallstreet.remaining_time data = $wallstreet.game_duration data

function wallstreet:economy_model/get_global_data
function wallstreet:villager/summon/all

team join wallstreet @a[distance=..13]
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

execute as @a[team=wallstreet] run function #common:animated_title {type:"start"}

effect give @a[team=wallstreet] resistance infinite 127 true
effect give @a[team=wallstreet] regeneration infinite 127 true
effect give @a[team=wallstreet] weakness infinite 127 true
