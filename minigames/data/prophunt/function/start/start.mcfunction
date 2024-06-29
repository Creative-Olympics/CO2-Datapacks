scoreboard players set $prophunt.game_started data 1

team join prophunt @a[x=112,y=82,z=66,distance=..5.5]

gamemode adventure @a[team=prophunt]
effect give @a[team=prophunt] saturation infinite 255 true
effect give @a[team=prophunt] regeneration infinite 255 true
effect give @a[team=prophunt] resistance infinite 255 true

scoreboard players reset @a[team=prophunt] prophunt.drop
scoreboard players reset @a[team=prophunt] prophunt.jump
scoreboard players reset @a[team=prophunt] prophunt.climb
scoreboard players reset @a[team=prophunt] prophunt.climb.y
scoreboard players reset @a[team=prophunt] prophunt.prop_lock
scoreboard players reset @a[team=prophunt] prophunt.prop_type
scoreboard players reset @a[team=prophunt] prophunt.prop_variation
scoreboard players reset @a[team=prophunt] prophunt.prop_variation_cooldown
scoreboard players reset @a[team=prophunt] prophunt.prop_switch_cooldown
scoreboard players reset @a[team=prophunt] prophunt.prop_stun_cooldown
scoreboard players reset @a[team=prophunt] prophunt.prop_taunt_timer

tag @a[team=prophunt] remove prophunt.is_hunter
tag @a[team=prophunt] remove prophunt.is_prop
tag @a[team=prophunt] remove prophunt.is_locked

stopsound @a[team=prophunt] record
execute as @a[team=prophunt] at @s run playsound prophunt:theme record @s
tellraw @a[team=prophunt] {"text":"Music by Ashot Danielyan","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}

# Make teams
scoreboard players set #count data 0
execute as @a[team=prophunt,sort=random] store result score @s data run scoreboard players add #count data 1
scoreboard players operation #count data /= 2 const
tag @a[team=prophunt,predicate=prophunt:make_hunter] add prophunt.is_hunter
tag @a[team=prophunt,tag=!prophunt.is_hunter] add prophunt.is_prop

# First taunt arrive randomly after 30 to 45 seconds
execute as @a[team=prophunt,tag=prophunt.is_prop] store result score @s prophunt.prop_taunt_timer run random value 0..300
scoreboard players add @a[team=prophunt,tag=prophunt.is_prop] prophunt.prop_taunt_timer 600

effect give @a[team=prophunt,tag=prophunt.is_prop] minecraft:invisibility infinite 0 true
execute as @a[team=prophunt,tag=prophunt.is_prop] at @s run function prophunt:prop/abilities/switch_type/stop
execute as @a[team=prophunt,tag=prophunt.is_prop] at @s run scoreboard players set @s prophunt.prop_switch_cooldown 0

execute as @a[team=prophunt,tag=prophunt.is_hunter] at @s run function prophunt:hunter/stunned/start
scoreboard players set @a[team=prophunt,tag=prophunt.is_hunter] prophunt.hunter_stunned 400
scoreboard players set @a[team=prophunt,tag=prophunt.is_hunter] prophunt.hunter_ping_stack 5

execute as @a[team=prophunt] at @s run function prophunt:inventory/changed

title @a[team=prophunt] times 0 100 20
title @a[team=prophunt,tag=prophunt.is_prop] title {"text":"Prop","color":"blue","bold":true,"italic":true}
title @a[team=prophunt,tag=prophunt.is_prop] subtitle {"text":"Find a place to hide!","color":"blue"}
title @a[team=prophunt,tag=prophunt.is_hunter] title {"text":"Hunter","color":"red","bold":true,"italic":true}
title @a[team=prophunt,tag=prophunt.is_hunter] subtitle {"text":"Find all the props!","color":"red"}

tp @e[team=prophunt,tag=prophunt.is_hunter] 134 88 59
tp @e[team=prophunt,tag=prophunt.is_prop] 117 83 54
