
execute at @e[tag=lib.start_animation.dropper] run team join dropper @a[distance=..5]
function dropper:map/build

clear @a[team=dropper]

scoreboard players set #dropper.game_started data 1
function dropper:jump/reset

scoreboard players set #dropper.music_timer data 0
scoreboard players set #dropper.round data 0

execute as @a[team=dropper] run function #global:animated_title {type:"start"}

tellraw @a[team=dropper] {"text":"Musics by Yrii Semchyshyn, Oleksandr Stepanov and QubeSounds","hoverEvent":{"action":"show_text","value":[{"text":"Played on the \"record\" audio source"}]}}