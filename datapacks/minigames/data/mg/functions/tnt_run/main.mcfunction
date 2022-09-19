execute if score TNT_RUN gameStarted matches 1 run function mg:tnt_run/game_started

execute if score TNT_RUN gameStarted matches 1 unless entity @a[tag=tnt_run.inGame] run function mg:tnt_run/end_game

execute if score TNT_RUN gameStarted matches 0 run fill -218 100 -4 -214 100 -4 air
execute if score TNT_RUN gameStarted matches 0 run fill -219 101 -4 -213 101 -4 air
execute if score TNT_RUN gameStarted matches 0 run fill -215 100 -9 -217 101 -9 air
execute if score TNT_RUN gameStarted matches 0 run fill -218 100 38 -214 100 38 air
execute if score TNT_RUN gameStarted matches 0 run fill -213 101 38 -219 101 38 air
execute if score TNT_RUN gameStarted matches 0 run fill -215 100 43 -217 101 43 air
