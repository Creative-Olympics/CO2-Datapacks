summon text_display ~ ~ ~ {background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'[{"text":"You are here","color":"white","bold":true,"underlined":true},{"text":" →","color":"white","bold":true,"underlined":false}]',Tags:["lobby.minimap","lobby.minimap.new"]}
summon text_display ~ ~ ~ {background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'[{"text":"You are here","color":"black","bold":true,"underlined":true},{"text":" →","color":"black","bold":true,"underlined":false}]',Tags:["lobby.minimap","lobby.minimap.new","lobby.minimap.black"]}

$tp @e[type=minecraft:text_display,tag=lobby.minimap.new] ^$(x) ^$(y) ^0.05 ~ ~

# Text alignment
execute as @e[type=minecraft:text_display,tag=lobby.minimap.new] at @s run tp @s ^-0.65 ^-0.08 ^
execute as @e[type=minecraft:text_display,tag=lobby.minimap.new,tag=lobby.minimap.black] at @s run tp @s ^0.01 ^-0.01 ^-0.01
