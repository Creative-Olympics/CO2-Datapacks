# Executed as and at the player
# tellraw @a {"text":"prophunt:lock_position/force_ride_locker"}

function prophunt:utils/get_associated_entities

# If the locker is the player himself, unlock him
execute if entity @s[tag=prophunt.current.locker] run function prophunt:events/unlock_prop

# Force player to ride the locker entity
execute unless entity @s[tag=prophunt.current.locker] run ride @s mount @e[tag=prophunt.current.locker,limit=1,sort=nearest]