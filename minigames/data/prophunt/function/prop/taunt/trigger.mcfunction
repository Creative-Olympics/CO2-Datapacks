execute as @a[team=prophunt,tag=prophunt.is_prop,scores={prophunt.prop_taunt_timer=..0}] at @s run function prophunt:prop/taunt/run
execute as @a[tag=prophunt.is_prop,scores={prophunt.prop_taunt_timer=1..100}] at @s run function prophunt:prop/taunt/title
scoreboard players remove @a[team=prophunt,tag=prophunt.is_prop] prophunt.prop_taunt_timer 1
