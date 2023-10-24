tag @s remove wallstreet.villager.locked

scoreboard players operation #lock_time tmp = #lock_date tmp
scoreboard players operation #lock_time tmp -= #wallstreet.timer data

execute if score #lock_time tmp < #wallstreet.villager.lock_time data if score #lock_time tmp matches 0.. run tag @s add wallstreet.villager.locked

execute if entity @s[tag=wallstreet.villager.locked] run function wallstreet:villager/lock/message
