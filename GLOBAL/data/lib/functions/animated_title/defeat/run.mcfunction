title @s title [{"text":"D","color":"white","italic":true,"bold":true}]
execute at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 2 1 1
schedule function lib:animated_title/defeat/2 1t
