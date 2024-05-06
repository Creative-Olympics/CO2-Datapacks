execute as @a[team=dropper] at @s run function #lib:animated_title {type:"victory"}

scoreboard players set $dropper.game_started data 0

stopsound @a[team=dropper] record
tag @a[team=dropper] remove dropper.jump_complete
tag @a[team=dropper] remove dropper.has_jumped
team leave @a[team=dropper]

schedule clear dropper:music/theme_1
schedule clear dropper:music/theme_2
schedule clear dropper:music/theme_3
