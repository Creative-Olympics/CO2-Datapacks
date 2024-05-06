execute as @a[team=boat_royal] at @s run function boat_royal:stop/leave
kill @e[type=boat,tag=boat_royal]
scoreboard players set $boat_royal.game_started data 0
