team join dropper @a[distance=..5]
execute as @a[team=dropper] run function #lib:animated_title {type:"start"}
clear @a[team=dropper]

scoreboard players set $dropper.round data 0
scoreboard players set $dropper.game_started data 1
