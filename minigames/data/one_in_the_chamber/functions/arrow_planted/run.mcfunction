
particle cloud ~ ~ ~ 0 0 0 0.1 10 force
data modify entity @s pickup set value 0
tag @s add one_in_the_chamber.arrow_planted

execute if block ~ ~ ~ glass_pane run setblock ~ ~ ~ structure_void destroy