title @s title [{"text":"S","color":"white","italic":true,"bold":true}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 1 1
schedule function lib:animated_title/start/2 1t
