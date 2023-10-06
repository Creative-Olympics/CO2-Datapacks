
execute unless score @s wallstreet.selected_quantity matches 0 at @p[tag=wallstreet.villager.client] run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 1 1 0

execute unless score #quantity tmp matches 0 if entity @s[tag=!wallstreet.villager.sell] run function wallstreet:villager/transaction/buy
execute unless score #quantity tmp matches 0 if entity @s[tag=wallstreet.villager.sell] run function wallstreet:villager/transaction/sell
execute unless score #quantity tmp matches 0 run function wallstreet:villager/refresh_price/selected

execute unless score @s wallstreet.selected_quantity matches 0 as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^1.3 run summon text_display ~ ~ ~ {text:'[{"text":"✔","color":"green","bold":false,"italic":false},{"text":" Deal !","color":"white","bold":false,"italic":false}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["wallstreet.entity","wallstreet.villager.gui.new","wallstreet.villager.gui.deal"],background:1677721600}

execute as @e[tag=wallstreet.villager.talking,limit=1,sort=nearest,distance=..2] rotated as @s as @e[tag=wallstreet.villager.gui.new] positioned as @s run tp @s ~ ~ ~ ~ ~

scoreboard players set @s wallstreet.selected_quantity 0

tag @e[tag=wallstreet.villager.gui.new] remove wallstreet.villager.gui.new