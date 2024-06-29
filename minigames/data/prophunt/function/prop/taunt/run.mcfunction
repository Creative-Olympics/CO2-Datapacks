# Executed as & at the prop
playsound entity.villager.yes master @a[distance=..30] ~ ~ ~ 2 2 0

# Getting the relative orientation of the hunter
execute as @a[team=prophunt,tag=prophunt.is_hunter] facing entity @s eyes rotated ~180 ~ run function #bs.position:get_rot_h {scale:-1}
execute as @a[team=prophunt,tag=prophunt.is_hunter] store result score @s ctx run data get entity @s Rotation[0]
execute as @a[team=prophunt,tag=prophunt.is_hunter] run scoreboard players operation @s bs.rot.h += @s ctx
scoreboard players operation @a[team=prophunt,tag=prophunt.is_hunter] bs.rot.h %= 360 const

# Show an arrow pointing to the prop
execute as @a[tag=prophunt.is_hunter] run title @s times 0 10 10
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=..23}] run title @s title {"text":"⬆","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=24..68}] run title @s title {"text":"⬉","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=69..113}] run title @s title {"text":"⬅","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=114..158}] run title @s title {"text":"⬋","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=159..203}] run title @s title {"text":"⬇","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=204..248}] run title @s title {"text":"⬊","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=249..293}] run title @s title {"text":"➡","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=294..337}] run title @s title {"text":"⬈","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=338..}] run title @s title {"text":"⬆","color":"red"}

# Next taunt arrive randomly after 10 to 30 seconds
execute store result score @s prophunt.prop_taunt_timer run random value 0..400
scoreboard players add @a[tag=prophunt.is_prop] prophunt.prop_taunt_timer 200
