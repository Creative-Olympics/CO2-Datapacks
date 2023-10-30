# Executed as & at the villager marker

scoreboard players operation #seconds ctx = @e[tag=wallstreet.sit,limit=1,sort=nearest] living_time
scoreboard players operation #seconds ctx -= #wallstreet.villager.interaction_time data
scoreboard players operation #seconds ctx *= -1 const
scoreboard players operation #seconds ctx /= 20 const
scoreboard players operation #seconds ctx -= 1 const

scoreboard players operation #modulo ctx = @e[tag=wallstreet.sit,limit=1,sort=nearest] living_time
scoreboard players operation #modulo ctx %= 20 const

execute if score #modulo ctx matches 0 as @e[tag=wallstreet.sit,limit=1,sort=nearest] on passengers at @s run playsound block.stone_button.click_off master @s ~ ~ ~ 0.2 1 0
execute if score #modulo ctx matches 0 if score #seconds ctx matches 1..5 as @e[tag=wallstreet.sit,limit=1,sort=nearest] on passengers at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2 0

execute if score #modulo ctx matches 0 if score #seconds ctx matches 6.. run data modify entity @e[tag=wallstreet.villager.gui.display.next_client,sort=nearest,limit=1] text set value '[{"text":"I\'ll take the next client in ","color":"gray","bold":false,"italic":true},{"score":{"name":"#seconds","objective":"ctx"},"color":"white","bold":false,"italic":false},{"text":"s","color":"gray","bold":false,"italic":true}]'

execute if score #modulo ctx matches 0 if score #seconds ctx matches ..5 run data modify entity @e[tag=wallstreet.villager.gui.display.next_client,sort=nearest,limit=1] text set value '[{"text":"I\'ll take the next client in ","color":"red","bold":false,"italic":true},{"score":{"name":"#seconds","objective":"ctx"},"color":"gold","bold":true,"italic":true},{"text":"s","color":"red","bold":false,"italic":true}]'