execute as @e[type=interaction,tag=lobby.map.interaction,nbt={interaction:{}}] at @s run function lobby:maps/fast_travel/click_event


execute as @a[tag=lobby.map.hover,predicate=!lobby:maps/hover] run title @s actionbar {"text":" "}
tag @a[tag=lobby.map.hover,predicate=!lobby:maps/hover] remove lobby.map.hover
tag @a[team=lobby,predicate=lobby:maps/hover] add lobby.map.hover
execute as @a[tag=lobby.map.hover,predicate=lobby:maps/hover] run title @s actionbar [{"text":"Use ","color":"white"},{"keybind":"key.use","color":"aqua"},{"text":" to fast travel","color":"white"}]

# execute at @e[tag=lobby.map.current_loc_marker] run particle minecraft:electric_spark ~ ~ ~ 0.01 0.01 0.01 1 0 normal
# execute at @e[type=marker,tag=lobby.map.current_loc_marker] run particle dust 0.016 0 1 0.5 ~ ~ ~ 0 0 0 1 0 normal