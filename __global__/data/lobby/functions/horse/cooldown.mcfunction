
scoreboard players operation #lobby.horse.cooldown.seconds data = @s lobby.horse.cooldown
scoreboard players operation #lobby.horse.cooldown.seconds data /= 20 const
scoreboard players add #lobby.horse.cooldown.seconds data 1

item modify entity @s container.8 lobby:horse/cooldown

execute store result score @s tmp run clear @s ghast_tear{display:{Name:'{"text":"Spawn horse (cooldown)","color":"red","bold":true,"italic":true}'}} 0
execute if score @s tmp > #lobby.horse.cooldown.seconds data run clear @s ghast_tear{display:{Name:'{"text":"Spawn horse (cooldown)","color":"red","bold":true,"italic":true}'}}

scoreboard players remove @s lobby.horse.cooldown 1