
scoreboard players set #lock_date ctx 0
$execute store result score #lock_date ctx run data get entity @s data.wallstreet.locked_clients.$(user) 1
execute if score #lock_date ctx matches 0 run scoreboard players set #lock_date ctx 2147483647