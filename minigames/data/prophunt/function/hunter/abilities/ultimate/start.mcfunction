playsound entity.ender_dragon.growl master @a[distance=..30] ~ ~ ~ 2 1 1
particle dragon_breath ~ ~1 ~ 0 0 0 0.5 300 force
effect give @s minecraft:speed infinite 4 true
effect give @s minecraft:jump_boost infinite 4 true
scoreboard players set @s prophunt.hunter_ultimate_timer 200
execute if score @s prophunt.hunter_dash_cooldown matches 1..200 run scoreboard players set @s prophunt.hunter_dash_cooldown 0
