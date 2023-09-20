# Executed as and at the desh entity
# tellraw @a {"text":"prophunt:features/dash/animation_loop"}

scoreboard players set #prophunt.dash.success data 0
execute at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #prophunt:cant_climb_on store success score #prophunt.dash.success data run tp @s ~ ~ ~
execute if score #prophunt.dash.success data matches 0 at @s positioned ^ ^ ^0.1 positioned ~ ~1 ~ if block ~ ~ ~ #prophunt:cant_climb_on store success score #prophunt.dash.success data run tp @s ~ ~ ~

execute at @s run particle cloud ^ ^ ^-3 0.3 0.5 0.3 0.1 1 force

scoreboard players add #prophunt.dash.loop data 1
execute unless score #prophunt.dash.loop data matches 15.. at @s run function prophunt:features/dash/animation_loop