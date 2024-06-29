scoreboard players operation #prophunt.hunter_stunned data = @s prophunt.hunter_stunned
scoreboard players operation #prophunt.hunter_stunned data %= 4 const
execute if score #prophunt.hunter_stunned data matches 0 run playsound minecraft:entity.parrot.ambient master @a[distance=..10] ~ ~ ~ 0.1 2 0

particle electric_spark ~ ~1.7 ~ 0.3 0.3 0.3 0 3 force @a[distance=0.1..]
execute anchored eyes run particle electric_spark ^ ^ ^1 0.5 0.5 0.5 0 5 force @s
