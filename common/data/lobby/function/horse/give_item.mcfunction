execute unless score @s lobby.horse_cooldown matches 1.. run item replace entity @s hotbar.7 with minecraft:horse_spawn_egg[item_name='[{"text":"SPAWN HORSE","color":"#E0CDAB","bold":true,"italic":true}]',can_place_on={predicates:[{blocks:"#common:all"}],show_in_tooltip:0b},entity_data={id:"minecraft:horse",CustomName:'""',Health:20f,Invulnerable:1b,attributes:[{id:"generic.movement_speed",base:.5},{id:"generic.jump_strength",base:1},{id:"generic.max_health",base:20}],Tags:["lobby.horse","lobby.horse.new"],Tame:1b,SaddleItem:{id:"minecraft:saddle",count:1}}]
execute if score @s lobby.horse_cooldown matches 1.. run item replace entity @s hotbar.7 with minecraft:strider_spawn_egg[item_name='[{"text":"SPAWN HORSE","color":"#a22c2e","bold":true,"italic":true}]',custom_model_data=1]
execute if score @s lobby.horse_cooldown matches 1.. run item modify entity @s container.7 lobby:horse_cooldown

advancement revoke @s only lobby:inventory_changed
