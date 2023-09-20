# Executed at the hunter and as the destination entity
# tellraw @a {"text":"prophunt:events/compute direction"}

data modify storage prophunt:position_indicator x set from entity @s Pos[0]
data modify storage prophunt:position_indicator y set from entity @s Pos[1]
data modify storage prophunt:position_indicator z set from entity @s Pos[2]

function prophunt:features/taunt/particle with storage prophunt:position_indicator