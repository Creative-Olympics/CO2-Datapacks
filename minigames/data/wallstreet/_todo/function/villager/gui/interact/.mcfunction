execute on target \
        at @s \
        unless entity @s[tag=wallstreet.villager.client] \
    run function wallstreet:villager/gui/interact/not_the_client

execute on target \
        at @s \
        if entity @s[tag=wallstreet.villager.client] \
        if score #lock_time ctx matches 0..300 \
    run function wallstreet:villager/gui/interact/locked

execute on target \
        if entity @s[tag=wallstreet.villager.client] \
        as @e[type=interaction,limit=1,sort=nearest] \
    run function wallstreet:villager/gui/interact/apply/

data remove entity @s interaction
