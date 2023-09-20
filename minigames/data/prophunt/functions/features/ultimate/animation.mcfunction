# Executed as & at player
# tellraw @a {"text":"prophunt:features/ultimate/animation"}

scoreboard players remove @s prophunt.ultimate_timer 1
scoreboard players remove @s[scores={prophunt.dash_cooldown=2..}] prophunt.dash_cooldown 1
execute rotated ~ 0 positioned ^ ^ ^-0.1 run particle dragon_breath ~ ~1 ~ 0.1 1 0.1 0.1 5 force
particle ash ~ ~1 ~ 5 5 5 0 30 force
execute if score @s prophunt.ultimate_timer matches ..0 run function prophunt:features/ultimate/stop