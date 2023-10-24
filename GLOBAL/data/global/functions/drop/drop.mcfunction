# Executed as & at player that drops the items
# tellraw @a {"text":"global:events/drop"}

# Disable the drop of items
tag @e[type=item,tag=!processed,limit=1,sort=nearest] add permanent

data modify entity @e[type=item,tag=!processed,limit=1,sort=nearest] Owner set from entity @s Thrower
data modify entity @e[type=item,tag=!processed,limit=1,sort=nearest] PickupDelay set value 0

tag @e[type=item,tag=!processed,limit=1,sort=nearest] add processed