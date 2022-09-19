scoreboard objectives add jump.animation dummy

scoreboard players add @a[tag=jump.animation] jump.animation 1


# Start animation
execute as @a[tag=jump.animation,scores={jump.animation=1}] at @s run function mg:jump/summon_clone

tag @e remove jump.animation.new
scoreboard players set @a[tag=jump.animation] jump.animation 0
