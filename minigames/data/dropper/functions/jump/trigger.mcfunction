execute as @a[team=dropper,tag=!dropper.has_jumped,predicate=dropper:is_jumping] run function dropper:jump/begin

# Jump complete ---------------------------------------------------------------

# If the player has jumped and is not currently jumping -> jump is complete
execute as @a[team=dropper,tag=dropper.has_jumped,tag=!dropper.jump_complete,predicate=!dropper:is_jumping] run function dropper:jump/complete
# If the player didn't jumped after 10s -> fail
execute if score #dropper.timer data matches ..0 as @a[team=dropper,predicate=dropper:on_diving_board,predicate=!dropper:is_jumping] at @s run function dropper:jump/failure/didnt_jump

# Reset jump if all player jumped ---------------------------------------------

execute store result score #dropper.didnt_jump_players data if entity @a[team=dropper,tag=!dropper.jump_complete]
execute if score #dropper.didnt_jump_players data matches 0 run function dropper:jump/reset/process
