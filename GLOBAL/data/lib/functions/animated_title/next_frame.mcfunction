execute store success score #success data run scoreboard players add @a[scores={animated_title.timer=1..}] animated_title.timer 1
execute if score #success data matches 1 run schedule function lib:animated_title/next_frame 1t
