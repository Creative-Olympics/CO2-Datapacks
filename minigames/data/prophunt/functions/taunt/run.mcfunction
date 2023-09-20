# Executed as and at the prop
# tellraw @a {"text":"prophunt:events/taunt"}

playsound entity.villager.yes master @a[distance=..30] ~ ~ ~ 2 2 0

execute at @a[tag=prophunt.is_hunter,distance=..30] run summon marker ~ ~ ~ {Tags:["prophunt.entity","prophunt.entity.new","prophunt.position_indicator"]}

execute at @e[tag=prophunt.is_hunter,distance=..30] as @s anchored eyes positioned ^ ^ ^1 facing entity @s feet as @e[tag=prophunt.entity.new,tag=prophunt.position_indicator] positioned ^ ^ ^2 positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute at @a[tag=prophunt.is_hunter,distance=..30] as @s anchored eyes positioned ^ ^ ^1 as @e[tag=prophunt.entity.new,tag=prophunt.position_indicator] run function prophunt:taunt/indicate_direction

# Next taunt arrive randomly after 10 to 30 seconds
execute as @a[tag=prophunt.is_prop] store result score @s prophunt.taunt_timer run random value 0..400
scoreboard players add @a[tag=prophunt.is_prop] prophunt.taunt_timer 200


kill @e[tag=prophunt.position_indicator]