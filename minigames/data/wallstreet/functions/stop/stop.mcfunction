
execute as @e[team=wallstreet] at @s run function wallstreet:stop/reset_player

function wallstreet:map/place_starting_sign

function wallstreet:villager/clear/all

kill @e[tag=wallstreet.entity]

scoreboard players set #wallstreet.game_started data 0

scoreboard objectives remove wallstreet.sidebar