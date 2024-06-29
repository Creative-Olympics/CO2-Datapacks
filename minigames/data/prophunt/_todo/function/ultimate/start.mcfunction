# Executed as & at player
# tellraw @a {"text":"prophunt:ultimate/start"}

playsound entity.ender_dragon.growl master @a[distance=..30] ~ ~ ~ 2 1 1
particle dragon_breath ~ ~1 ~ 0 0 0 0.5 300 force
effect give @s speed infinite 4 true
effect give @s jump_boost infinite 4 true
scoreboard players set @s prophunt.ultimate_timer 200
scoreboard players set @s prophunt.dash_cooldown 0