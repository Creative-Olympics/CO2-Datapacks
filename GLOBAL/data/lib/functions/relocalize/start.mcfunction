# Executed as and at the player that need to be relocalized
# Usage: execute as [...] run function #lib:relocalize {x:<x_location>, y:<y_location>, z:<z_location>, rot:<rotation>}
# Note: the relocalization will take 3 seconds
# tellraw @a [{"selector":"@s"},{"text":" > global:features/relocalize/start","color":"gray"}]

team join lobby @s

$scoreboard players set @s reloc.x $(x)
$scoreboard players set @s reloc.y $(y)
$scoreboard players set @s reloc.z $(z)
$scoreboard players set @s reloc.rot $(rot)

scoreboard players operation @s reloc.x *= 1000 const
scoreboard players operation @s reloc.y *= 1000 const
scoreboard players operation @s reloc.z *= 1000 const

scoreboard players add @s reloc.x 500
scoreboard players add @s reloc.y 500
scoreboard players add @s reloc.z 500

gamemode spectator @s

summon block_display ~ ~ ~ {Tags:["reloc","reloc.new"],teleport_duration:1}

execute as @e[tag=reloc.new] at @s run tp @s ~ ~ ~ ~180 ~

scoreboard players operation @e[tag=reloc.new] parent.SUID = @s SUID
scoreboard players set @e[tag=reloc.new] living_time -100
tag @e[tag=reloc.new] remove reloc.new

scoreboard players set @s reloc.vx 0
scoreboard players set @s reloc.vy 250000
scoreboard players operation @s reloc.vy -= @s pos.y
scoreboard players operation @s reloc.vy /= 20 const
scoreboard players set @s reloc.vz 0

scoreboard players set @s reloc.timer 1

playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.2 1.5 0

particle cloud ~ ~1 ~ 0 0.5 0 0.1 100 normal @a[distance=0.1..30]

tag @s add lib.relocalizing