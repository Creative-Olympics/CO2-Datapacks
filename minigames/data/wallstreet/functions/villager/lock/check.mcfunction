tag @s remove wallstreet.villager.locked

scoreboard players operation #lock_time ctx = #lock_date ctx
scoreboard players operation #lock_time ctx -= #wallstreet.timer data

execute if score #lock_time ctx < #wallstreet.villager.lock_time data if score #lock_time ctx matches 0.. run tag @s add wallstreet.villager.locked

execute if entity @s[tag=wallstreet.villager.locked] run function wallstreet:villager/lock/message
