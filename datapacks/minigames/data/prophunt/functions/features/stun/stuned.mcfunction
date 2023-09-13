# Executed as and at the stuned player
# tellraw @a {"text":"prophunt:events/stuned"}

scoreboard players operation #prophunt.stuned data = @s prophunt.stuned
scoreboard players operation #prophunt.stuned data %= 4 data
execute if score #prophunt.stuned data matches 0 run playsound minecraft:entity.parrot.ambient master @a[distance=..10] ~ ~ ~ 0.1 2 0

particle electric_spark ~ ~1.7 ~ 0.3 0.3 0.3 0 3 force @a[distance=0.1..]
execute anchored eyes run particle electric_spark ^ ^ ^1 0.5 0.5 0.5 0 5 force @s

# tp @s ~ ~ ~ ~ 90

effect give @s slowness infinite 255 true
effect give @s mining_fatigue infinite 128 true
effect give @s jump_boost infinite 128 true
effect give @s blindness infinite 255 true

scoreboard players remove @a[scores={prophunt.stuned=1..}] prophunt.stuned 1