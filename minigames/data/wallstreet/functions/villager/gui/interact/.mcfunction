
execute store result score @s tmp run data get entity @s interaction.player[0]
execute as @a[team=wallstreet] if score @s UUID = @e[type=interaction,limit=1,sort=nearest] tmp run tag @s add wallstreet.villager.gui.player_interacted

execute \
    as @p[tag=wallstreet.villager.gui.player_interacted] \
    unless entity @s[tag=wallstreet.villager.client] \
    at @s \
run \
    function wallstreet:villager/gui/interact/not_the_client



execute as @p[tag=wallstreet.villager.gui.player_interacted] \
        if entity @s[tag=wallstreet.villager.client] \
        if score #lock_time tmp matches 0..300 \
run function wallstreet:villager/gui/interact/locked

execute \
    as @p[tag=wallstreet.villager.gui.player_interacted] \
    if entity @s[tag=wallstreet.villager.client] \
    as @e[type=interaction,limit=1,sort=nearest] \
run \
    function wallstreet:villager/gui/interact/apply/


tag @a[tag=wallstreet.villager.gui.player_interacted] remove wallstreet.villager.gui.player_interacted

data remove entity @s interaction
