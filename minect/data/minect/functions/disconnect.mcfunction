execute unless entity @e[type=area_effect_cloud,tag=minect_connection] run tellraw @s [{"text":""},{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","contents":"Minect"}},{"text":" No connections found."}]
execute if entity @e[type=area_effect_cloud,tag=minect_connection] run tellraw @s [{"text":""},{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","contents":"Minect"}},{"text":" Click on a connection to remove it:"}]
function #minect_internal:disconnect/prompt
