scoreboard players set @s prophunt.hunter_dash_cooldown 199
attribute @s minecraft:generic.scale base set 1

ride @s dismount
effect clear @s minecraft:invisibility
effect clear @s minecraft:speed
effect give @s[scores={prophunt.hunter_ultimate_timer=1..}] speed infinite 4 true

kill @e[type=minecraft:block_display,tag=prophunt.dash,predicate=!prophunt:has_passenger]
