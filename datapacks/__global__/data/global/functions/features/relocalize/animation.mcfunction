# Executed as and at the player that need to be relocalized
# tellraw @a [{"selector":"@s"},{"text":" > global:features/relocalize/animation","color":"gray"}]

scoreboard players add @s reloc.timer 1

# Identify riding entity
tag @s add global.current.player
execute as @e[tag=reloc] if score @s parent.SUID = @p[tag=global.current.player] SUID run tag @s add global.current.entity

# Force look down
execute as @e[tag=global.current.entity,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~ 90

# Ascending phase
execute if score @s reloc.timer matches 0..20 store result score #reloc.y data run data get entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[1] 1000
execute if score @s reloc.timer matches 0..20 store result entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players operation #reloc.y data += @s reloc.vy

# Horizontal phase
execute if score @s reloc.timer matches 30 run function global:features/relocalize/get_direction
execute if score @s reloc.timer matches 31..50 store result score #reloc.x data run data get entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[0] 1000
execute if score @s reloc.timer matches 31..50 store result score #reloc.z data run data get entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[2] 1000
execute if score @s reloc.timer matches 31..50 store result entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[0] double 0.001 run scoreboard players operation #reloc.x data += @s reloc.vx
execute if score @s reloc.timer matches 31..50 store result entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[2] double 0.001 run scoreboard players operation #reloc.z data += @s reloc.vz

# Descending phase
execute if score @s reloc.timer matches 60 run function global:features/relocalize/get_height
execute if score @s reloc.timer matches 61..80 store result score #reloc.y data run data get entity @e[tag=reloc,limit=1,sort=nearest] Pos[1] 1000
execute if score @s reloc.timer matches 61..80 store result entity @e[tag=global.current.entity,limit=1,sort=nearest] Pos[1] double 0.001 run scoreboard players operation #reloc.y data += @s reloc.vy

# Stopping phase
execute if score @s reloc.timer matches 80 as @e[tag=global.current.entity,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ 0 0

spectate @e[tag=global.current.entity,limit=1,sort=nearest]
execute if score @s reloc.timer matches 81.. at @s run function global:features/relocalize/stop

# Remove identification tags
tag @a[tag=global.current.player] remove global.current.player
tag @e[tag=global.current.entity] remove global.current.entity

