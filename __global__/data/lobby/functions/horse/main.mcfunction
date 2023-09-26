
item replace entity @a[team=lobby,scores={lobby.horse.cooldown=0}] hotbar.8 with minecraft:horse_spawn_egg{CanPlaceOn:["#lib:all"],display:{Name:'{"text":"Spawn horse","color":"white","bold":true,"italic":true}'},EntityTag:{id:"minecraft:horse",Variant:0,Tags:["lobby.horse","lobby.horse.new"],Tame:1,SaddleItem:{id:"minecraft:saddle",Count:1}}}

item replace entity @a[team=lobby,scores={lobby.horse.cooldown=1..}] hotbar.8 with minecraft:ghast_tear{display:{Name:'{"text":"Spawn horse (cooldown)","color":"red","bold":true,"italic":true}'},CustomModelData:1}

execute as @a[team=lobby] store result score @s tmp run clear @s horse_spawn_egg 0
execute as @a[team=lobby] if score @s tmp matches 2.. run clear @s
clear @a[team=lobby,scores={lobby.horse.cooldown=0}] ghast_tear{display:{Name:'{"text":"Spawn horse (cooldown)","color":"red","bold":true,"italic":true}'}}


execute as @a[team=lobby,scores={lobby.horse.cooldown=1..}] run function lobby:horse/cooldown

execute if entity @e[tag=lobby.horse.spawn_animation] run function lobby:horse/spawn_animation

execute as @e[type=horse,name="Spawn horse"] unless score @s parent.SUID matches 1.. run function lobby:horse/kill


execute as @e[tag=lobby.horse] at @s run function lobby:horse/check_parent_proximity