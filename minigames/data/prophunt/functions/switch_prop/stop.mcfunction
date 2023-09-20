# Executed as and at the player
# tellraw @a {"text":"prophunt:switch_prop/stop"}

function prophunt:utils/give_items/prop
particle dust 0.667 0.000 1.000 1 ~ ~ ~ 0.5 0.5 0.5 1 500 force
playsound entity.allay.item_thrown master @s ~ ~ ~ 2 2 1
effect clear @s speed
effect clear @s jump_boost

scoreboard players set @s prophunt.drop_trigger 0

# Get a new random prop excepting the previous one
execute store result score $new_prop data run random value 0..10
execute if score $new_prop data >= @s prophunt.prop_type run scoreboard players add $new_prop data 1
scoreboard players operation @s prophunt.prop_type = $new_prop data
scoreboard players set @s prophunt.prop_variation 0

function prophunt:prop_display/refresh

# Hitbox
execute if score @s prophunt.prop_type matches 6 run summon interaction ~ ~ ~ {Tags:["prophunt.entity","prophunt.entity.new","prophunt.interaction","prophunt.interaction.bottom","prophunt.interaction.top"],width:3f,height:3.5f}
execute if score @s prophunt.prop_type matches 7 run summon interaction ~ ~ ~ {Tags:["prophunt.entity","prophunt.entity.new","prophunt.interaction","prophunt.interaction.bottom","prophunt.interaction.top"],width:5f,height:7f}
execute unless score @s prophunt.prop_type matches 6..7 run summon interaction ~ ~ ~ {Tags:["prophunt.entity","prophunt.entity.new","prophunt.interaction","prophunt.interaction.bottom","prophunt.interaction.top"],width:2.5f,height:2.5f}

scoreboard players operation @e[tag=prophunt.entity.new] parent.SUID = @s SUID

scoreboard players set @s prophunt.prop_switch_cooldown 100