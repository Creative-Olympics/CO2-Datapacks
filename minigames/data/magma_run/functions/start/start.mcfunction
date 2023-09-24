
execute at @e[tag=magma_run.start_anim] run team join magma_run @a[distance=..21]

tellraw @a[team=magma_run] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"text":"Game is started! Good luck have fun!","color":"gray"}]

execute as @a[team=magma_run] at @s run function #global:animated_title {type:"start"}
execute as @a[team=magma_run] at @s run stopsound @s music
execute as @a[team=magma_run] at @s run playsound magma_run:theme music @s
execute as @a[team=magma_run] at @s run tellraw @s {"text":"Music by Oleksii Holubiev from Pixabay"}