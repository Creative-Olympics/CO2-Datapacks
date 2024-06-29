# Executed as & at player
# tellraw @a {"text":"prophunt:ultimate/stop"}

effect clear @s speed
effect clear @s jump_boost
scoreboard players set @s prophunt.ultimate_timer 0
scoreboard players set @s prophunt.ultimate_points 0
playsound entity.endermite.death master @a[distance=..30] ~ ~ ~ 1 2 0