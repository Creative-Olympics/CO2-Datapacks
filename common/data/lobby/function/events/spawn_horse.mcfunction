advancement revoke @s only lobby:spawn_horse

scoreboard players set @s lobby.horse_cooldown 600

ride @s mount @e[type=minecraft:horse,tag=lobby.horse.new,limit=1,sort=nearest]
execute at @s run playsound minecraft:entity.horse.armor master @s ~ ~ ~ 2 1 1
execute as @e[type=minecraft:horse,tag=lobby.horse.new,limit=1,sort=nearest] at @s run function lobby:horse/spawn_animation/animation
tag @e[type=minecraft:horse,tag=lobby.horse.new,limit=1,sort=nearest] remove lobby.horse.new

function lobby:horse/give_item
