scoreboard players set update_timer minect_global 0
execute at @e[type=area_effect_cloud,tag=minect_connection] positioned ~ ~-4 ~ run function minect_internal:pulse_redstone
