# Executed globally
# tellraw @a {"text":"prophunt:start"}

team join prophunt @a[x=112,y=82,z=66,distance=..5.5]

effect give @a[team=prophunt] saturation infinite 255 true
effect give @a[team=prophunt] regeneration infinite 255 true
effect give @a[team=prophunt] resistance infinite 255 true

execute as @a[team=prophunt] run function prophunt:climb/stop

scoreboard players add @a prophunt.drop_trigger 0
scoreboard players add @a prophunt.climb 0
scoreboard players add @a prophunt.prop_type 0
scoreboard players add @a prophunt.stun_hunters_cooldown 0
scoreboard players set @a prophunt.stop.timer 0
scoreboard players set @a prophunt.ping_stack 5
scoreboard players set @a prophunt.ping_cooldown 0

# Make teams
scoreboard players set $prophunt.player_count data 0
execute as @a[team=prophunt,sort=random] store result score @s data run scoreboard players add $prophunt.player_count data 1
scoreboard players operation $prophunt.player_count data /= 2 const
execute as @a[team=prophunt] if score @s data > $prophunt.player_count data run tag @s add prophunt.is_prop
tag @a[team=prophunt,tag=!prophunt.is_prop] add prophunt.is_hunter
gamemode adventure @a[team=prophunt]

# First taunt arrive randomly after 30 to 45 seconds
execute as @a[tag=prophunt.is_prop] store result score @s prophunt.taunt_timer run random value 0..300
scoreboard players add @a[tag=prophunt.is_prop] prophunt.taunt_timer 600

effect give @a[tag=prophunt.is_prop] minecraft:invisibility infinite 1 true

execute as @a[tag=prophunt.is_prop] at @s run function prophunt:switch_prop/stop
execute as @a[tag=prophunt.is_prop] at @s run scoreboard players set @s prophunt.prop_switch_cooldown 0
execute as @a[tag=prophunt.is_hunter] at @s run function prophunt:utils/give_items/hunter

# Game time to 5min
scoreboard players set $prophunt.game_time data 6000
scoreboard players operation $prophunt.remaining_time data = $prophunt.game_time data

scoreboard players operation $prophunt.ultimate_cost data = $prophunt.game_time data
scoreboard players set @a[tag=prophunt.is_hunter] prophunt.ultimate_points 0
scoreboard players set @a[tag=prophunt.is_hunter] prophunt.ultimate_timer 0
scoreboard players set @a[tag=prophunt.is_prop] prophunt.dash_cooldown 0


scoreboard players set $prophunt.game_started data 1

scoreboard players set @a[tag=prophunt.is_hunter] prophunt.stuned 400

stopsound @a[team=prophunt] record
execute as @a[team=prophunt] at @s run playsound prophunt:theme record @s
tellraw @a[team=prophunt] {"text":"Music by Ashot Danielyan","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}

title @a[team=prophunt] times 0 100 20
title @a[team=prophunt,tag=prophunt.is_prop] title {"text":"Prop","color":"blue","bold":true,"italic":true}
title @a[team=prophunt,tag=prophunt.is_prop] subtitle {"text":"Find a place to hide!","color":"blue"}
title @a[team=prophunt,tag=prophunt.is_hunter] title {"text":"Hunter","color":"red","bold":true,"italic":true}
title @a[team=prophunt,tag=prophunt.is_hunter] subtitle {"text":"Find all the props!","color":"red"}

# execute as @a[team=prophunt] at @s run function #lib:animated_title {type:"start"}

tp @e[team=prophunt,tag=prophunt.is_hunter] 134 88 59
tp @e[team=prophunt,tag=prophunt.is_prop] 117 83 54

function prophunt:timer/start

setblock 112 82 66 air destroy
setblock 111 82 66 air destroy
