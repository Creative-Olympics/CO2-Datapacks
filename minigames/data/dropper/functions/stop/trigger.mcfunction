scoreboard players set #dropper.living_player data 0
execute as @a[team=dropper] run scoreboard players add #dropper.living_player data 1
execute if score #dropper.living_player data matches ..1 run function dropper:stop/end_game