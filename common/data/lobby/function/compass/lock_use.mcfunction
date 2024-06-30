tag @a[team=lobby,tag=lobby.using_compass] remove lobby.using_compass
tag @a[team=lobby,advancements={lobby:use_compass=true}] add lobby.using_compass
advancement revoke @a[team=lobby,advancements={lobby:use_compass=true}] only lobby:use_compass
execute if entity @a[team=lobby,tag=lobby.using_compass] run schedule function lobby:compass/lock_use 1t
