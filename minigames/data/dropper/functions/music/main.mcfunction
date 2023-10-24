
# First theme (1m 28s)
execute if score #dropper.music_timer data matches 0 as @a[team=dropper] at @s run stopsound @s music
execute if score #dropper.music_timer data matches 0 as @a[team=dropper] at @s run playsound dropper:theme-1 record @s ~ ~ ~ 0.5 1 0

# Second theme (1m 6s)
execute if score #dropper.music_timer data matches 1780 as @a[team=dropper] at @s run stopsound @s music
execute if score #dropper.music_timer data matches 1780 as @a[team=dropper] at @s run playsound dropper:theme-2 record @s ~ ~ ~ 0.5 1 0

# Third theme (1m 6s)
execute if score #dropper.music_timer data matches 3120 as @a[team=dropper] at @s run stopsound @s music
execute if score #dropper.music_timer data matches 3120 as @a[team=dropper] at @s run playsound dropper:theme-3 record @s ~ ~ ~ 0.5 1 0


scoreboard players add #dropper.music_timer data 1
execute if score #dropper.music_timer data matches 4980.. run scoreboard players set #dropper.music_timer data 0