# Executed on the camera entity
# tellraw @a [{"text":"oitc:animation/end_game on "},{"selector":"@s"}]

# Camera motion
tp @s ^-0.3 ^ ^ ~-1 ~

# Force players to be in the camera
execute at @a[team=oitc] run spectate @s @p[team=oitc]

# Increment end game timer
scoreboard players add #OITC:end_game_timer data 1

execute if score #OITC:end_game_timer data matches 100.. run function #one_in_the_chamber:stop