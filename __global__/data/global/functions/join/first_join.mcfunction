# Executed as & at joining player
# tellraw @a {"text":"global:events/first_join"}

title @s times 20 100 20
title @s subtitle ["",{"text":"to the","color":"blue"},{"text":" Creative","color":"yellow"},{"text":" Olympics","color":"dark_green"},{"text":" public server","color":"red"}]
title @s title {"text":"Welcome","bold":true,"color":"white"}
playsound minecraft:ui.toast.challenge_complete master @s

function function #minecraft:join

