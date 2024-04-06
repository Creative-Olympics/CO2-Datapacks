# Executed as and at the prop
# tellraw @a {"text":"prophunt:events/taunt"}

playsound entity.villager.yes master @a[distance=..30] ~ ~ ~ 2 2 0

tag @s add prophunt.taunt

# Getting the relative orientation of the hunter
execute as @a[tag=prophunt.is_hunter] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=prophunt.taunt] feet run function #bs.position:get_rot_h {scale:1}
execute as @a[tag=prophunt.is_hunter] run scoreboard players operation @s ctx = @s bs.rot.h
execute as @a[tag=prophunt.is_hunter] at @s run function #bs.position:get_rot_h {scale:1}
execute as @a[tag=prophunt.is_hunter] run scoreboard players operation @s ctx -= @s bs.rot.h
execute as @a[tag=prophunt.is_hunter] run scoreboard players operation @s bs.rot.h = @s ctx
execute as @a[tag=prophunt.is_hunter] run scoreboard players operation @s bs.rot.v %= 180 const
execute as @a[tag=prophunt.is_hunter] run scoreboard players operation @s bs.rot.h %= 360 const

# Show an arrow pointing to the prop
execute as @a[tag=prophunt.is_hunter] run title @s times 0 10 10
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=..23}] run title @s title {"text":"⬆","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=24..68}] run title @s title {"text":"⬈","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=69..113}] run title @s title {"text":"➡","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=114..158}] run title @s title {"text":"⬊","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=159..203}] run title @s title {"text":"⬇","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=204..248}] run title @s title {"text":"⬋","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=249..293}] run title @s title {"text":"⬅","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=294..337}] run title @s title {"text":"⬉","color":"red"}
execute as @a[tag=prophunt.is_hunter,scores={bs.rot.h=338..}] run title @s title {"text":"⬆","color":"red"}

# Next taunt arrive randomly after 10 to 30 seconds
execute as @a[tag=prophunt.is_prop] store result score @s prophunt.taunt_timer run random value 0..400

scoreboard players add @a[tag=prophunt.is_prop] prophunt.taunt_timer 200

tag @a[tag=prophunt.taunt] remove prophunt.taunt
