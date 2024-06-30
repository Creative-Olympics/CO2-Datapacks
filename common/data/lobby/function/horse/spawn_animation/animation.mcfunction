scoreboard players add @s lobby.horse_cooldown 1

particle totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 10 force
particle totem_of_undying ^ ^ ^-1.5 0.1 0.1 0.1 0 10 force
particle totem_of_undying ^1.5 ^ ^ 0.1 0.1 0.1 0 10 force
particle totem_of_undying ^-1.5 ^ ^ 0.1 0.1 0.1 0 10 force

execute if score @s lobby.horse_cooldown matches 1 run schedule function lobby:horse/spawn_animation/frame_2 1t
execute if score @s lobby.horse_cooldown matches 2 run schedule function lobby:horse/spawn_animation/frame_3 1t
execute if score @s lobby.horse_cooldown matches 3 run schedule function lobby:horse/spawn_animation/frame_4 1t
execute if score @s lobby.horse_cooldown matches 4 run schedule function lobby:horse/spawn_animation/frame_5 1t
