# Executed globally
# tellraw @a {"text":"oitc:stop"}

# Reset map
fill -194 99 -75 -192 101 -75 air replace barrier
fill -194 98 -75 -192 98 -75 air replace mangrove_fence

fill -166 98 -92 -166 99 -96 air replace barrier
fill -166 97 -92 -166 97 -96 air replace mangrove_fence

fill -206 98 -90 -206 103 -97 air replace barrier
fill -206 97 -90 -206 97 -97 air replace mangrove_fence

fill -183 98 -106 -178 99 -106 air replace barrier
fill -183 97 -106 -178 97 -106 air replace mangrove_fence

fill -194 98 -106 -194 99 -106 air replace barrier
fill -194 97 -106 -194 97 -106 air replace mangrove_fence

# Reset players
clear @a[team=oitc]
effect clear @a[team=oitc]
scoreboard players reset * oitc_kills
scoreboard players reset * oitc_kills_memory
gamemode adventure @a[team=oitc]
spreadplayers -187 -86 0 3 false @a[team=oitc]
team join lobby @a[team=oitc]

# Reset global data
scoreboard players set #OITC:game_started data 0
scoreboard players set #OITC:end_game_timer data 0

# Clear entities
kill @e[tag=oitc_death_camera]
kill @e[tag=oitc_end_game_camera]

# Set starting sign
setblock -184 97 -96 minecraft:birch_wall_sign[facing=south,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"red",has_glowing_text:0b,messages:['{"clickEvent":{"action":"run_command","value":"scoreboard players set #OITC:start_anim data 1"},"color":"red","text":"Start"}','{"color":"red","text":"ONE IN THE"}','{"color":"red","text":"CHAMBER"}','{"text":""}']},is_waxed:0b}
setblock -184 97 -97 minecraft:quartz_pillar