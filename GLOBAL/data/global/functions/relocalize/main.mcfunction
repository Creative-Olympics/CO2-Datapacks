# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > global:relocalize/main","color":"gray"}]

# If the function is executed globally
execute as @a[scores={reloc.timer=1..}] at @s run function global:relocalize/animation