execute at @s run fill ~ ~-5 ~ ~ ~1 ~ air
execute at @s run forceload remove ~ ~
kill @s
tellraw @a [{"text":""},{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","contents":"Minect"}},{"text":" Removed connection "},{"selector":"@s"}]
