execute store result score #result data run data get entity @s SelectedItemSlot
scoreboard players operation #result data %= @s prophunt.prop_variation_limit

execute unless score @s prophunt.prop_variation = #result data run function prophunt:prop/abilities/switch_variation/run
