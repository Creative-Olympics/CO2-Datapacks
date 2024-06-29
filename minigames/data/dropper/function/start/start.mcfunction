team join dropper @a[distance=..5]
tag @a[team=dropper] remove dropper.has_jumped
tag @a[team=dropper] remove dropper.jump_complete
execute as @a[team=dropper] run function #lib:animated_title {type:"start"}
clear @a[team=dropper]

scoreboard players set $dropper.round data 0
scoreboard players set $dropper.game_started data 1
