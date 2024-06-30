scoreboard players remove @s lobby.horse_cooldown 1

execute store result score #lobby.horse.cooldown data run scoreboard players operation #lobby.horse.cooldown.seconds data = @s lobby.horse_cooldown
scoreboard players operation #lobby.horse.cooldown.seconds data /= 20 const
scoreboard players operation #lobby.horse.cooldown data %= 20 const
 scoreboard players add #lobby.horse.cooldown.seconds data 1

execute store result score #result data if entity @s[advancements={lobby:inventory_changed=true}]
execute if score #lobby.horse.cooldown data matches 19 run item modify entity @s container.7 lobby:horse_cooldown
execute if score #lobby.horse.cooldown data matches 19 if score #result data matches 0 run advancement revoke @s only lobby:inventory_changed

execute if score @s lobby.horse_cooldown matches 0 run function lobby:horse/give_item
