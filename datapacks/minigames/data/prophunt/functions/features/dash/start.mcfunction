# Executed as and at the player
# tellraw @a {"text":"prophunt:features/dash/start"}

clear @s
effect give @s speed infinite 127 true
playsound minecraft:entity.ender_dragon.flap master @a[distance=..30] ~ ~ ~ 2 2 0

effect give @s invisibility infinite 1 true


summon armor_stand ~ ~ ~ {Tags:["prophunt.dash","prophunt.dash.new"],Invisible:1b,Marker:1b,Small:1b}
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=prophunt.dash.new] ~ ~ ~ ~ ~
ride @s mount @e[tag=prophunt.dash.new,limit=1,sort=nearest]
scoreboard players operation @e[tag=prophunt.dash.new] prophunt.parent_SUID = @s SUID
tag @e remove prophunt.dash.new