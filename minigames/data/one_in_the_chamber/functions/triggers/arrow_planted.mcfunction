# Executed globally
# tellraw @a {"text":"oitc:triggers/arrow_planted"}

execute as @e[type=arrow,nbt={inGround:1b}] at @s run function one_in_the_chamber:events/arrow_planted