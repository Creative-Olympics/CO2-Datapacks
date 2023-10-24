
execute as @e[tag=lobby.horse.spawn_animation] at @s run particle totem_of_undying ^ ^ ^1.5 0.1 0.1 0.1 0 10 force
execute as @e[tag=lobby.horse.spawn_animation] at @s run particle totem_of_undying ^ ^ ^-1.5 0.1 0.1 0.1 0 10 force
execute as @e[tag=lobby.horse.spawn_animation] at @s run particle totem_of_undying ^1.5 ^ ^ 0.1 0.1 0.1 0 10 force
execute as @e[tag=lobby.horse.spawn_animation] at @s run particle totem_of_undying ^-1.5 ^ ^ 0.1 0.1 0.1 0 10 force


execute as @e[tag=lobby.horse.spawn_animation] at @s run tp @s ~ ~0.5 ~ ~30 ~
kill @e[tag=lobby.horse.spawn_animation,scores={living_time=5..}]