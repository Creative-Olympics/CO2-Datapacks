clear @s
playsound minecraft:entity.ender_dragon.flap master @a[distance=..30] ~ ~ ~ 2 2 0

summon minecraft:block_display ~ ~ ~ {Tags:["prophunt.entity","prophunt.dash","prophunt.new"],teleport_duration:2}
execute anchored eyes positioned ^ ^ ^ run tp @e[type=minecraft:block_display,tag=prophunt.new,limit=1] ~ ~ ~ ~ ~
attribute @s minecraft:generic.scale base set 0
ride @s mount @e[type=minecraft:block_display,tag=prophunt.new,limit=1]
tag @e[type=minecraft:block_display,tag=prophunt.new] remove prophunt.new

effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:speed infinite 127 true

scoreboard players set @s prophunt.hunter_dash_cooldown 215
