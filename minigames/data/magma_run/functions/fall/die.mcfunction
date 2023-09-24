
playsound minecraft:entity.villager.hurt master @a[x=-215.5,y=100.5,z=17.5,distance=..33] ~ ~ ~ 2 1 1
tellraw @a[x=-215.5,y=100.5,z=17.5,distance=..33] ["",{"text":"MAGMA RUN > ","color":"gold","bold":true,"italic":true},{"selector":"@s"},{"text":" fell in the magma!","color":"gray"}]

tp @s -194 103 17 90 0
function #magma_run:reset_player
function #global:animated_title {type:"defeat"}

