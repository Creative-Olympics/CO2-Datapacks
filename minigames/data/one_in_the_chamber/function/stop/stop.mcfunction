scoreboard players set $oitc.game_started data 0
scoreboard players set $oitc.end_game_timer data 0
schedule clear one_in_the_chamber:stop/animation

spreadplayers -187 -86 0 3 false @a[team=oitc]
execute as @a[team=oitc] run function lobby:handlers/player_joined

scoreboard players reset * oitc.kill_count
kill @e[type=block_display,tag=oitc.camera]
