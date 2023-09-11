# Executed globally
# tellraw @a {"text":"prophunt:triggers/taunt"}

scoreboard players remove @a[tag=prophunt.is_prop,scores={prophunt.taunt_timer=0..}] prophunt.taunt_timer 1

execute as @a[tag=prophunt.is_prop,scores={prophunt.taunt_timer=..0}] at @s run function prophunt:events/taunt

execute as @a[tag=prophunt.is_prop,scores={prophunt.taunt_timer=1..100}] at @s run function prophunt:events/taunt_title