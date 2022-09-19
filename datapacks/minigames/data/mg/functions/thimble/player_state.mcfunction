

# Active player
tag @a remove thimble.teleport

#effect clear @a[tag=thimble.yourTurn] invisibility
execute as @a[tag=thimble.yourTurn,scores={countdown=0}] at @s unless entity @s[x=126,y=79,z=19,dx=6,dy=24,dz=6] run tag @s add thimble.teleport
tp @a[tag=thimble.teleport] 129 99 19 0 0
playsound minecraft:entity.enderman.teleport master @a[tag=thimble.teleport] 129 99 19 2 1 1
scoreboard players set @a[tag=thimble.teleport] countdown 200
execute as @a[tag=thimble.teleport] run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"It's ","color":"gray"},{"selector":"@s","color":"gray"},{"text":"'s turn!","color":"gray"}]

scoreboard players set @a[tag=thimble.yourTurn,scores={locY=..98},tag=!thimble.teleport,x=126,y=79,z=19,dx=6,dy=24,dz=6] countdown 0


# Passive players
execute as @a[tag=thimble.inGame,tag=!thimble.yourTurn] unless entity @s[x=136,y=86,z=30,dx=5,dy=3,dz=5] run tp @s 140.95 87 30.3 124.5 28.5
execute as @a[tag=thimble.inGame,tag=!thumble.yourTurn] run title @s actionbar [{"text":"Wait for your turn...","color":"red"}]
#effect give @a[tag=thimble.inGame,tag=!thimble.yourTurn] invisibility 1 0 true
