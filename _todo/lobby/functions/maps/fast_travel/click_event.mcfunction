
execute if entity @s[tag=lobby.map.goto.mini_market] on target at @s positioned -280 97 17 rotated 0 0 run function #common:relocalize_player

execute if entity @s[tag=lobby.map.goto.big_market] on target at @s positioned -82 99 120 rotated -90 0 run function #common:relocalize_player

execute if entity @s[tag=lobby.map.goto.gladiator_place] on target at @s positioned 94 98 183 rotated 0 0 run function #common:relocalize_player

execute if entity @s[tag=lobby.map.goto.port] on target at @s positioned -45 97 -80 rotated 0 0 run function #common:relocalize_player

data remove entity @s interaction
