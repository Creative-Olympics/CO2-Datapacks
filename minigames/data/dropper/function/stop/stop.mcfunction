scoreboard players set $dropper.game_started data 0

execute as @a[team=dropper] at @s run function #lib:animated_title {type:"victory"}
execute as @a[team=dropper] run function lobby:handlers/player_joined

schedule clear dropper:music/theme_1
schedule clear dropper:music/theme_2
schedule clear dropper:music/theme_3
