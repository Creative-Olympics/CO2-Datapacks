kill @e[type=block_display,tag=oitc.camera]
scoreboard players set $oitc.game_started data 0

scoreboard players reset @a[team=oitc] oitc.respawn_timer
summon block_display -183.0 112.0 -107.0 {Tags:["oitc.camera"],teleport_duration:4,Rotation:[0f,30f]}
function one_in_the_chamber:stop/animation

scoreboard players set $oitc.best_score data 0
scoreboard players operation $oitc.best_score data > @a[team=oitc] oitc.kill_count
execute as @a[team=oitc,predicate=one_in_the_chamber:is_winner] run function #lib:animated_title {type:"victory"}
execute as @a[team=oitc,predicate=!one_in_the_chamber:is_winner] run function #lib:animated_title {type:"defeat"}

gamemode spectator @a[team=oitc]
stopsound @a[team=oitc] record
