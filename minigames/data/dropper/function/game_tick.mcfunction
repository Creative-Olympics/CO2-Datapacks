effect give @a[predicate=dropper:in_dropzone] invisibility 1 1 true
execute at @a[team=dropper] run effect give @a[distance=0.001..3] invisibility 1 1 true

# Display timer ---------------------------------------------------------------

execute store result score #dropper.timer.seconds data store result score #dropper.timer.modulo data run scoreboard players remove $dropper.timer data 1
scoreboard players operation #dropper.timer.modulo data %= 20 const
execute if score #dropper.timer.modulo data matches 0 run function dropper:timer/display
