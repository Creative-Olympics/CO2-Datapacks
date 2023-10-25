
# If player dropped his compass -> cycle forward
tag @a[team=wallstreet,scores={wallstreet.compass.drop_trigger=1..}] add wallstreet.compass.update
scoreboard players add @a[team=wallstreet,scores={wallstreet.compass.drop_trigger=1..}] wallstreet.compass.select 1
execute as @a[team=wallstreet,scores={wallstreet.compass.drop_trigger=1..}] at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 2 0
scoreboard players reset * wallstreet.compass.drop_trigger

# If the player swapped it from hands -> cycle backward
tag @a[team=wallstreet,nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] add wallstreet.compass.update
scoreboard players remove @a[team=wallstreet,nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] wallstreet.compass.select 1
execute as @a[team=wallstreet,nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] at @s run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute as @a[team=wallstreet,nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] at @s run clear @s compass

# Cycle limits
execute as @a[team=wallstreet] if score @s wallstreet.compass.select > #wallstreet.villager_count data run scoreboard players set @s wallstreet.compass.select 1
execute as @a[team=wallstreet] if score @s wallstreet.compass.select matches ..0 run scoreboard players operation @s wallstreet.compass.select = #wallstreet.villager_count data

# Count number of possessed compassed compass
scoreboard players set @a[team=wallstreet] tmp 0
execute as @a[team=wallstreet] store result score @s tmp run clear @s compass 0
tag @a[team=wallstreet,scores={tmp=0}] add wallstreet.compass.update

execute as @a[tag=wallstreet.compass.update] at @s run function wallstreet:inventory/compass/update

tag @a[tag=wallstreet.compass.update] remove wallstreet.compass.update