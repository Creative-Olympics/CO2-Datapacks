# Executed as and at an entity
# tellraw @a [{"selector":"@s"},{"text":" > prophunt:prop_display/shift_blocks","color":"gray"}]

execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.x-2] at @s run tp @s ^-2 ^ ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.x-1] at @s run tp @s ^-1 ^ ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.x+1] at @s run tp @s ^1 ^ ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.x+2] at @s run tp @s ^2 ^ ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.y-1] at @s run tp @s ^ ^-1 ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.y+1] at @s run tp @s ^ ^1 ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.y+2] at @s run tp @s ^ ^2 ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.y+3] at @s run tp @s ^ ^3 ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.y+4] at @s run tp @s ^ ^4 ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.y+5] at @s run tp @s ^ ^5 ^
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.z-2] at @s run tp @s ^ ^ ^-2
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.z-1] at @s run tp @s ^ ^ ^-1
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.z+1] at @s run tp @s ^ ^ ^1
execute as @e[tag=prophunt.current.display,tag=prophunt.display.shift.z+2] at @s run tp @s ^ ^ ^2