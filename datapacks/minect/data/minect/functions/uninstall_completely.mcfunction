execute as @e[type=area_effect_cloud,tag=minect_connection] run function minect:disconnect_self

scoreboard objectives remove minect_chunk_pos
scoreboard objectives remove minect_config
scoreboard objectives remove minect_const
scoreboard objectives remove minect_entity_pos
scoreboard objectives remove minect_global

scoreboard objectives remove minect_version
datapack disable "file/minect"

tellraw @s [{"text":""},{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","contents":"Minect"}},{"text":" Uninstalled Minect from Minecraft. To fully uninstall Minect, you need to delete the following directories in your world directory and then execute "},{"text":"reload","clickEvent":{"action":"run_command","value":"/reload"},"hoverEvent":{"action":"show_text","contents":"Click to execute"},"color":"aqua"},{"text":" (or restart Minecraft):\n - datapacks/minect\n - generated/minect\n Alternatively you can reinstall Minect by executing "},{"text":"datapack enable \"file/minect\"","clickEvent":{"action":"run_command","value":"/datapack enable \"file/minect\""},"hoverEvent":{"action":"show_text","contents":"Click to execute"},"color":"aqua"}]
