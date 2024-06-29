scoreboard players remove $check jump.step 1

particle dust{color:[0.565,0.000,1.000],scale:1} ~ ~1 ~ 0.3 0.7 0.3 0 50 normal @a

execute at @e[type=marker,tag=jump.checkpoint,predicate=jump:check_step] run tp @s ~ ~1 ~
execute at @s run particle dust{color:[0.565,0.000,1.000],scale:1} ~ ~1 ~ 0.5 1 0.5 0 100 normal @a
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 2 0

scoreboard players add $check jump.step 1
