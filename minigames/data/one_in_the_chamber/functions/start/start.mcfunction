# Executed globally
# tellraw @a {"text":"prophunt:start"}

function one_in_the_chamber:map/lock
function one_in_the_chamber:map/replace_windows

execute at @e[tag=lib.start_animation.one_in_the_chamber] run team join oitc @a[distance=..5.5]

scoreboard objectives setdisplay sidebar.team.red oitc_kills
scoreboard players set @a[team=oitc] oitc_kills 0
scoreboard players set @a[team=oitc] oitc_kills_memory 0
scoreboard players set @a[team=oitc] oitc_time_since_death 100
gamemode adventure @a[team=oitc]
tag @a[team=oitc] add global.cant_drop
effect clear @a[team=oitc]
effect give @a[team=oitc] minecraft:regeneration infinite 0 true
clear @a[team=oitc]
execute as @a[team=oitc] at @s run function one_in_the_chamber:respawn/respawn

execute as @a[team=oitc] at @s run function #global:animated_title {type:"start"}

# Setup global variables
scoreboard players set #OITC:game_started data 1
scoreboard players set #OITC:end_game_timer data 0
scoreboard players set #oitc.musics.timer data 0

tellraw @a[team=oitc] {"text": "Musics by Alew Cristoforetti and Yoav Alyagon"}