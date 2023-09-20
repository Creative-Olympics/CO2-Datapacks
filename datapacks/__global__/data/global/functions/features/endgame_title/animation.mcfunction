# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > global:features/endgame_title/animation","color":"gray"}]

title @a[scores={global.endgame_title.timer=1..}] times 0 40 20

execute if entity @a[tag=global.endgame_title.victory] run function global:features/endgame_title/type/victory
execute if entity @a[tag=global.endgame_title.defeat] run function global:features/endgame_title/type/defeat
execute if entity @a[tag=global.endgame_title.draw] run function global:features/endgame_title/type/draw
execute if entity @a[tag=global.endgame_title.finish] run function global:features/endgame_title/type/finish
execute if entity @a[tag=global.endgame_title.timesup] run function global:features/endgame_title/type/timesup


playsound minecraft:ui.toast.challenge_complete master @a[tag=global.endgame_title.winner,scores={global.endgame_title.timer=1}] ~ ~ ~ 2 1 1
playsound minecraft:entity.wither.death master @a[tag=global.endgame_title.loser,scores={global.endgame_title.timer=1}] ~ ~ ~ 2 1 1

scoreboard players add @a[scores={global.endgame_title.timer=1..}] global.endgame_title.timer 1
execute as @a[scores={global.endgame_title.timer=30..}] at @s run function global:features/endgame_title/stop 
