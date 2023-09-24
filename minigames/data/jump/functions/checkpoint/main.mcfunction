
execute as @e[tag=jump.checkpoint] at @s run function jump:checkpoint/conditioned_activation

# execute if entity @a[scores={jump.time_left=1..,jump.step=0}] run function jump:checkpoints/1
# execute if entity @a[scores={jump.time_left=1..,jump.step=1}] run function jump:checkpoints/2
# execute if entity @a[scores={jump.time_left=1..,jump.step=2}] run function jump:checkpoints/3
# execute if entity @a[scores={jump.time_left=1..,jump.step=3}] run function jump:checkpoints/4
# execute if entity @a[scores={jump.time_left=1..,jump.step=4}] run function jump:checkpoints/5
# execute if entity @a[scores={jump.time_left=1..,jump.step=5}] run function jump:checkpoints/6
# execute if entity @a[scores={jump.time_left=1..,jump.step=6}] run function jump:checkpoints/7
# execute if entity @a[scores={jump.time_left=1..,jump.step=7}] run function jump:checkpoints/8
# execute if entity @a[scores={jump.time_left=1..,jump.step=8}] run function jump:checkpoints/9
# execute if entity @a[scores={jump.time_left=1..,jump.step=8}] run function jump:checkpoints/9
# execute if entity @a[scores={jump.time_left=1..,jump.step=9}] run function jump:checkpoints/10
# execute if entity @a[scores={jump.time_left=1..,jump.step=10}] run function jump:checkpoints/11
# execute if entity @a[scores={jump.time_left=1..,jump.step=11}] run function jump:checkpoints/12
# execute if entity @a[scores={jump.time_left=1..,jump.step=12}] run function jump:checkpoints/13
# execute if entity @a[scores={jump.time_left=1..,jump.step=13}] run function jump:checkpoints/14
# execute if entity @a[scores={jump.time_left=1..,jump.step=14}] run function jump:checkpoints/15
# execute if entity @a[scores={jump.time_left=1..,jump.step=15}] run function jump:checkpoints/16
# execute if entity @a[scores={jump.time_left=1..,jump.step=16}] run function jump:checkpoints/17
# execute if entity @a[scores={jump.time_left=1..,jump.step=17}] run function jump:checkpoints/18
# execute if entity @a[scores={jump.time_left=1..,jump.step=18}] run function jump:checkpoints/19
execute as @e[tag=jump.checkpoint] at @s run tp @s ~ ~ ~ ~10 0