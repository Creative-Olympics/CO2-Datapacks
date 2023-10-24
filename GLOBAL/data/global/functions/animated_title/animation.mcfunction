# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > global:animated_title/animation","color":"gray"}]

execute if entity @a[tag=global.animated_title.victory] run function global:animated_title/type/victory
execute if entity @a[tag=global.animated_title.defeat] run function global:animated_title/type/defeat
execute if entity @a[tag=global.animated_title.draw] run function global:animated_title/type/draw
execute if entity @a[tag=global.animated_title.finish] run function global:animated_title/type/finish
execute if entity @a[tag=global.animated_title.timesup] run function global:animated_title/type/timesup
execute if entity @a[tag=global.animated_title.start] run function global:animated_title/type/start


playsound minecraft:ui.toast.challenge_complete master @a[tag=global.animated_title.winner,scores={global.animated_title.timer=1}] ~ ~ ~ 2 1 1
playsound minecraft:entity.wither.death master @a[tag=global.animated_title.loser,scores={global.animated_title.timer=1}] ~ ~ ~ 2 1 1

scoreboard players add @a[scores={global.animated_title.timer=1..}] global.animated_title.timer 1
execute as @a[scores={global.animated_title.timer=30..}] at @s run function global:animated_title/stop 
