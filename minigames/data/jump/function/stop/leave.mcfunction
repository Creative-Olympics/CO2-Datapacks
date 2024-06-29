function lobby:handlers/player_joined

title @s subtitle {"text":" "}
title @s actionbar {"text":" "}

scoreboard players reset @s jump.step
scoreboard players reset @s jump.timer
scoreboard players reset @s jump.time_left
scoreboard players reset @s jump.checkpoint_timer
