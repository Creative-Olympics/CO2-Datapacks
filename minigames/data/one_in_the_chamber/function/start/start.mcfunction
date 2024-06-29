team join oitc @a[distance=..5.5]

tag @a[team=oitc] remove oitc.b0
tag @a[team=oitc] remove oitc.b1
tag @a[team=oitc] remove oitc.b2
tag @a[team=oitc] remove oitc.b3
tag @a[team=oitc] remove oitc.b4
tag @a[team=oitc] remove oitc.b5
tag @a[team=oitc] remove oitc.b6
scoreboard players set #oitc.count data 0
execute as @a[team=oitc] run function one_in_the_chamber:start/init_player

clear @a[team=oitc]
effect clear @a[team=oitc]
effect give @a[team=oitc] minecraft:regeneration infinite 0 true
execute as @a[team=oitc] run function one_in_the_chamber:death/respawn
execute as @a[team=oitc] run function #lib:animated_title {type:"start"}
gamemode adventure @a[team=oitc]

scoreboard players set @a[team=oitc] oitc.kill_count 0
scoreboard players reset @a[team=oitc] oitc.respawn_timer
scoreboard objectives setdisplay sidebar.team.red oitc.kill_count

scoreboard players set $oitc.game_started data 1
