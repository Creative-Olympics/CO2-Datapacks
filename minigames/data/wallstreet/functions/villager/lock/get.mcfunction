
scoreboard players set #lock_date tmp 0
$execute store result score #lock_date tmp run data get entity @s data.wallstreet.locked_clients.$(user) 1
execute if score #lock_date tmp matches 0 run scoreboard players set #lock_date tmp 2147483647