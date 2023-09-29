
scoreboard players set @s lobby.horse.cooldown 600

tag @s add lobby.horse.summoner
execute as @e[tag=lobby.horse] if score @s parent.SUID = @p[tag=lobby.horse.summoner] SUID run function lobby:horse/kill
tag @s remove lobby.horse.summoner

advancement revoke @s only lobby:horse/spawn

scoreboard players operation @e[tag=lobby.horse.new,limit=1,sort=nearest] parent.SUID = @s SUID

execute at @e[tag=lobby.horse.new,limit=1,sort=nearest] run playsound minecraft:entity.horse.armor master @s ~ ~ ~ 2 1 1

# execute at @e[tag=lobby.horse.new,limit=1,sort=nearest] run particle cloud ~ ~1 ~ 0.7 0.7 0.7 0 200 force
execute at @e[tag=lobby.horse.new,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["lobby.horse.spawn_animation"]}

# effect give @e[tag=lobby.horse.new,limit=1,sort=nearest] speed infinite 9 true
effect give @e[tag=lobby.horse.new,limit=1,sort=nearest] resistance infinite 127 true
effect give @e[tag=lobby.horse.new,limit=1,sort=nearest] regeneration infinite 127 true

data modify entity @e[tag=lobby.horse.new,limit=1,sort=nearest] CustomName set value ''
data modify entity @e[tag=lobby.horse.new,limit=1,sort=nearest] Attributes set value [{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.5}]

execute store result entity @e[tag=lobby.horse.new,limit=1,sort=nearest] Variant int 1 run random value 0..1000
data modify entity @e[tag=lobby.horse.new,limit=1,sort=nearest] CustomName set value ''

tag @e[tag=lobby.horse.new,limit=1,sort=nearest] remove lobby.horse.new