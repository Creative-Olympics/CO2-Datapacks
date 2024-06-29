effect clear @s speed
effect clear @s jump_boost

particle dust{color:[0.667,0.0,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 1 500 force
playsound entity.allay.item_thrown master @s ~ ~ ~ 2 2 1

# Get a new random prop excepting the previous one
execute store result score #result data run random value 0..2
scoreboard players operation @s prophunt.prop_type += #result data
scoreboard players operation @s prophunt.prop_type %= 3 const

execute store result score @s prophunt.prop_variation run data get entity @s SelectedItemSlot
function prophunt:prop/display/refresh
