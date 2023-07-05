
# Set player conditions
function thimble:player_state

# Jump Complete
execute as @a[tag=thimble.inGame,tag=thimble.yourTurn] at @s if block ~ ~ ~ water run tag @s add thimble.jumpComplete
execute as @a[tag=thimble.jumpComplete] run function thimble:set_wool
execute as @a[tag=thimble.jumpComplete] run function thimble:detect_dac
execute as @a[tag=thimble.jumpComplete] at @s align xyz run particle minecraft:totem_of_undying ~0.5 ~1.2 ~0.5 0.2 0.3 0.2 0 30
execute as @a[tag=thimble.jumpComplete] at @s run playsound minecraft:entity.experience_orb.pickup master @a[tag=thimble.inGame] 135 84 29
execute as @a[tag=thimble.jumpComplete] run scoreboard players add FILLED thimble 1

# Jump Cancelled
execute as @a[tag=thimble.yourTurn,scores={countdown=0,locY=99..}] run tag @s add thimble.jumpCancelled
execute as @a[tag=thimble.yourTurn,scores={countdown=0,locY=99..}] run tellraw @s {"score":{"name":"@s","objective":"locY"},"color":"yellow"}
scoreboard players remove @a[tag=thimble.jumpCancelled,scores={thimble.lives=1..}] thimble.lives 1

# Jump Failed
tag @a[tag=thimble.yourTurn,scores={damageResisted=1..}] add thimble.jumpFailed
scoreboard players remove @a[tag=thimble.jumpFailed,scores={thimble.lives=1..}] thimble.lives 1

# Messages
execute as @a[tag=thimble.jumpFailed] at @s run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" missed his jump...","color":"gray"}]
execute as @a[tag=thimble.jumpCancelled] at @s run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" didn't jump :/","color":"gray"}]
execute as @a[tag=thimble.jumpComplete,tag=!thimble.dac] at @s run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" succeeded in his jump!","color":"gray"}]
execute as @a[tag=thimble.dac] at @s run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" DID A THIMBLE! ","color":"gray"},{"text":"+1 ♥","color":"red"}]


# Eliminated
scoreboard players set @a[tag=thimble.yourTurn,scores={thimble.lives=0}] tmp 0
execute as @a[tag=thimble.inGame,scores={thimble.lives=1..}] run scoreboard players add @a[tag=thimble.yourTurn,scores={thimble.lives=0}] tmp 1
scoreboard players add @a[tag=thimble.yourTurn,scores={thimble.lives=0}] tmp 1
execute as @a[tag=thimble.yourTurn,scores={thimble.lives=0}] at @s run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" is eliminated. Position: ","color":"red"},{"score":{"name":"@s","objective":"tmp"},"color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"PLAYER_COUNT","objective":"thimble"},"color":"yellow"}]

# Leave game
execute as @a[x=139,y=86,z=35,dx=2,dy=2,dz=2,tag=thimble.inGame] at @s run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"selector":"@s","color":"gray"},{"text":" left the game.","color":"gray"}]
tag @a[x=139,y=86,z=35,dx=2,dy=2,dz=2,tag=thimble.inGame] remove thimble.inGame


tag @a[tag=thimble.jumpFailed] add thimble.jumpComplete
tag @a[tag=thimble.jumpCancelled] add thimble.jumpComplete

#scoreboard players set @a[tag=thimble.jumpComplete] countdown -20




#execute if score $EndGame data matches 0 if entity @a[tag=thimble.jumpComplete,tag=thimble.yourTurn] run function mg:thimble/get_next_player

tag @a[tag=thimble.jumpComplete] remove thimble.yourTurn
execute if entity @a[tag=thimble.inGame,scores={thimble.lives=1..}] unless entity @a[tag=thimble.yourTurn] run function thimble:get_next_player

execute unless entity @a[tag=thimble.inGame,scores={thimble.lives=1..}] run function thimble:game/stop
execute if score FILLED thimble matches 25 run tellraw @a[tag=thimble.inGame] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"The whole area has been filled! Congratulations to ","color":"gray"},{"selector":"@a[tag=thimble.inGame,scores={thimble.lives=1..}]","color":"gray"},{"text":" who stayed alive!","color":"gray"}]
execute if score FILLED thimble matches 25 run function thimble:game/stop
