kill @e[type=command_block_minecart,tag=minect_impulse,nbt=!{LastExecution: 1L}]

scoreboard players add update_timer minect_global 1
execute if score update_timer minect_global >= update_delay minect_config run function minect_internal:update
