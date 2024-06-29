execute as @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.use_coas=1..}] run function prophunt:hunter/abilities/ping/try_run

scoreboard players remove @a[team=prophunt,tag=prophunt.is_hunter,scores={prophunt.hunter_ping_cooldown=1..}] prophunt.hunter_ping_cooldown 1
execute as @a[team=prophunt,scores={prophunt.hunter_ping_cooldown=..0}] run function prophunt:hunter/abilities/ping/replenish
