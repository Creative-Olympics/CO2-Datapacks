
execute if entity @s[tag=lobby.map.goto.mini_market] on target at @s run function #lib:relocalize {x:-280,y:97,z:17,rot: 0}

execute if entity @s[tag=lobby.map.goto.big_market] on target at @s run function #lib:relocalize {x:-82,y:99,z:120,rot: -90}

execute if entity @s[tag=lobby.map.goto.gladiator_place] on target at @s run function #lib:relocalize {x:94,y:98,z:183,rot: 0}

execute if entity @s[tag=lobby.map.goto.port] on target at @s run function #lib:relocalize {x:-45,y:97,z:-80,rot: 0}

data remove entity @s interaction