title @s times 20 100 20
title @s subtitle ["",{"text":"to the","color":"blue"},{"text":" Creative","color":"yellow"},{"text":" Olympics","color":"dark_green"},{"text":" public server","color":"red"}]
title @s title {"text":"Welcome","bold":true,"color":"white"}
playsound minecraft:ui.toast.challenge_complete master @s

scoreboard players set @s leave_game 1
function lobby:handlers/player_joined
