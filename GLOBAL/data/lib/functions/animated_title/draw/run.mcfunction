title @s title [{"text":"D","color":"white","italic":true,"bold":true}]
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1 1
schedule function lib:animated_title/draw/2 1t
