
execute as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] run function wallstreet:villager/utils/get_client_next_balance

execute if score #next_balance ctx matches 0.. run particle dust 0 0.839 0.322 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal
execute if score #next_balance ctx matches 0.. as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/transaction/confirm
execute if score #next_balance ctx matches 0.. as @e[tag=wallstreet.villager_marker.talking,limit=1,sort=nearest] at @s run function wallstreet:villager/talk/stop


execute if score #next_balance ctx matches ..-1 run particle dust 0.839 0 0 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 1 10 normal
execute if score #next_balance ctx matches ..-1 run playsound entity.villager.no master @p[tag=wallstreet.villager.client] ~ ~ ~ 1 1 1