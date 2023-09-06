# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:events/stuned"}

scoreboard players operation #prophunt.stuned data = @s prophunt.stuned
scoreboard players operation #prophunt.stuned data %= 5 data
execute if score #prophunt.stuned data matches 0 run playsound minecraft:entity.parrot.ambient master @a[distance=..10] ~ ~ ~ 1 2 0

effect give @s slowness infinite 255 true
effect give @s mining_fatigue infinite 255 true