scoreboard players remove @s prophunt.hunter_ultimate_timer 1
scoreboard players remove @s[scores={prophunt.hunter_dash_cooldown=2..}] prophunt.hunter_dash_cooldown 1
execute rotated ~ 0 positioned ^ ^ ^-0.1 run particle dragon_breath ~ ~1 ~ 0.1 1 0.1 0.1 5 force
particle ash ~ ~1 ~ 5 5 5 0 30 force
execute if score @s prophunt.hunter_ultimate_timer matches ..0 run function prophunt:hunter/abilities/ultimate/stop
