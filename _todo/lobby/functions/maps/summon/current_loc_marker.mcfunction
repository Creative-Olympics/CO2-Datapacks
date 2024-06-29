

# summon block_display ~ ~ ~ {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:lightning_rod"},Tags:["lobby.map","lobby.map.current_loc_marker","lobby.map.current_loc_marker.new"]}

summon text_display ~ ~ ~ {background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'[{"text":"You are here","color":"white","bold":true,"underlined":true},{"text":" →","color":"white","bold":true,"underlined":false}]',Tags:["lobby.map","lobby.map.current_loc_marker","lobby.map.current_loc_marker.new"]}
summon text_display ~ ~ ~ {background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'[{"text":"You are here","color":"black","bold":true,"underlined":true},{"text":" →","color":"black","bold":true,"underlined":false}]',Tags:["lobby.map","lobby.map.current_loc_marker","lobby.map.current_loc_marker.new","lobby.map.current_loc_marker.black"]}


tp @e[tag=lobby.map.current_loc_marker.new] @s
$tp @e[tag=lobby.map.current_loc_marker.new] ^$(x) ^$(y) ^0.05

# Text alignment
execute as @e[tag=lobby.map.current_loc_marker.new] at @s run tp @s ^-0.65 ^-0.08 ^
execute as @e[tag=lobby.map.current_loc_marker.new,tag=lobby.map.current_loc_marker.black] at @s run tp @s ^0.01 ^-0.01 ^-0.01

tag @e[tag=lobby.map.current_loc_marker.new] remove lobby.map.current_loc_marker.new