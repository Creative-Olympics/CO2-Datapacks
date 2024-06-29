fill -236 99 -3 -196 99 37 minecraft:structure_void replace minecraft:suspicious_sand[dusted=3]
fill -236 99 -3 -196 99 37 minecraft:suspicious_sand[dusted=3] replace minecraft:suspicious_sand[dusted=2]
fill -236 99 -3 -196 99 37 minecraft:suspicious_sand[dusted=2] replace minecraft:suspicious_sand[dusted=1]
fill -236 99 -3 -196 99 37 minecraft:suspicious_sand[dusted=1] replace minecraft:suspicious_sand[dusted=0]
execute if score $magma_run.game_started data matches 1 run schedule function magma_run:sand/decay 2t
