
scoreboard players remove #dropper.timer data 1


execute as @a[team=dropper,tag=!dropper.has_jumped,scores={pos.y=..195000}] run tellraw @a[team=dropper] [{"text":"DROPPER > ","color":"green","bold":true,"italic":true},{"selector":"@s","color":"gray","bold":false,"italic":false},{"text":" has jumped!","color":"gray","bold":false,"italic":false}]
execute as @a[team=dropper,tag=!dropper.has_jumped,scores={pos.y=..195000}] as @a[team=dropper] at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 1 2 0
execute as @a[team=dropper,tag=!dropper.has_jumped,scores={pos.y=..195000}] run tag @s add dropper.has_jumped

# Display timer ---------------------------------------------------------------

execute store result score #dropper.timer.seconds data store result score #dropper.timer.modulo data run scoreboard players get #dropper.timer data
scoreboard players operation #dropper.timer.seconds data /= 20 const
scoreboard players operation #dropper.timer.modulo data %= 20 const
scoreboard players add #dropper.timer.seconds data 1

execute if score #dropper.timer data matches 101.. run title @a[team=dropper,scores={pos.y=195000..}] actionbar [{"text":"You have ","color":"white"},{"score":{"name":"#dropper.timer.seconds","objective":"data"},"color":"green"},{"text":"s to jump","color":"white"}]

execute if score #dropper.timer data matches ..100 run title @a[team=dropper,scores={pos.y=195000..}] actionbar [{"text":"You have ","color":"red","bold":true,"italic":true},{"score":{"name":"#dropper.timer.seconds","objective":"data"},"color":"yellow","bold":true,"italic":true},{"text":"s to jump","color":"red","bold":true,"italic":true}]

execute if score #dropper.timer data matches 1..100 if score #dropper.timer.modulo data matches 0 as @a[team=dropper,scores={pos.y=195000..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 0

# Jump complete ---------------------------------------------------------------

# If the player fall in water inside of the zone -> success
execute as @a[team=dropper,scores={pos.x=118500..128500,pos.y=70000..120000,pos.z=-9500..500},tag=!dropper.jump_complete] at @s if block ~ ~ ~ #dropper:water run function dropper:jump/success

# If the player fall in water outside of the zone -> fail
execute as @a[team=dropper,scores={pos.y=70000..120000},tag=!dropper.jump_complete] at @s if block ~ ~ ~ #dropper:water run function dropper:jump/missed_zone

# If the player fall on a block -> fail
execute as @a[team=dropper,scores={pos.y=70000..180000},tag=!dropper.jump_complete] at @s if score @s dropper.pos_y.memory <= @s pos.y run function dropper:jump/fell_on_block
execute as @a[team=dropper,scores={pos.y=70000..180000},tag=!dropper.jump_complete,nbt={OnGround:1b}] at @s run function dropper:jump/fell_on_block
execute as @e[team=dropper] run scoreboard players operation @s dropper.pos_y.memory = @s pos.y


# If the player didn't jumped after 10s -> fail
execute if score #dropper.timer data matches ..0 as @a[team=dropper,scores={pos.y=195000..}] at @s run function dropper:jump/didnt_jump

# Reset jump if all player jumped ---------------------------------------------

scoreboard players set #dropper.didnt_jump_players data 0
execute as @a[team=dropper,tag=!dropper.jump_complete] run scoreboard players add #dropper.didnt_jump_players data 1
execute if score #dropper.timer_before_jump_reset data matches 1.. run scoreboard players add #dropper.timer_before_jump_reset data 1
execute if score #dropper.timer_before_jump_reset data matches 0 if score #dropper.didnt_jump_players data matches 0 if entity @a[team=dropper] run scoreboard players add #dropper.timer_before_jump_reset data 1
execute if score #dropper.timer_before_jump_reset data matches 66 run scoreboard players add #dropper.round data 1
execute if score #dropper.timer_before_jump_reset data matches 66 run function dropper:obstacles/generate
execute if score #dropper.timer_before_jump_reset data matches 33 run function dropper:zone/refill
execute if score #dropper.timer_before_jump_reset data matches 100.. run function dropper:jump/reset