execute if score setup setup matches 1 run function coc:opening
execute if score setup setup matches 2 run function coc:closing

scoreboard players enable @a[team=0config] reset
scoreboard players enable @a[team=1staff] thanks
execute as @a[team=0config] if score @s reset matches 1 run function coc:reset
execute as @a[team=1staff] if score @s thanks matches 1 run function coc:thanks/0

execute as @a[team=0config] if score @s reset matches 1 run scoreboard players set @s reset 0
execute as @a[team=1staff] if score @s thanks matches 1 run scoreboard players set @s thanks 0
