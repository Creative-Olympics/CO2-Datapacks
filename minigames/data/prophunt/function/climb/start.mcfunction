# Executed as and at the climbing player
# tellraw @a [{"selector":"@s"},{"text":" > prophunt:climb/start","color":"gray"}]
execute at @s unless block ~ ~-1 ~ #prophunt:can_walk_through rotated ~ 0 positioned ^ ^1 ^0.7 unless predicate prophunt:can_climb run return run function prophunt:climb/stop

effect give @s minecraft:levitation infinite 10 true
scoreboard players set @s prophunt.climb 1
