# This function was automatically generated.

execute as @a[tag=bs.menu.debug.mapedit,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.mapedit] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.mapedit] bs.menu.page 0
execute as @a[tag=bs.menu.debug.mapedit,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.mapedit,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.mapedit,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.mapedit,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.mapedit] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.mapedit] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.mapedit] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.mapedit] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.mapedit,tag=bs.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.mapedit] remove bs.menu.debug
tag @a[tag=bs.menu.debug.mapedit.close] add bs.menu.debug
execute as @a[tag=bs.menu.debug.mapedit.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.mapedit.close] remove bs.menu.debug.mapedit
tag @a[tag=bs.menu.debug.mapedit.close] remove bs.menu.debug.mapedit.close

tellraw @a[tag=bs.menu.debug.mapedit] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0}] {"text": "   + brush", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.mapedit.brush"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.centre] ["", {"text": "   centre: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.centre] ["", {"text": "   centre: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.centre"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.esphere] ["", {"text": "   esphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.esphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.pos1] ["", {"text": "   pos1: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.pos1] ["", {"text": "   pos1: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.pos1"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.pos2] ["", {"text": "   pos2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.pos2] ["", {"text": "   pos2: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.pos2"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.replace] ["", {"text": "   replace: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.replace"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.set] ["", {"text": "   set: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.set"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=!bs.debug.mapedit.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.mapedit,scores={bs.menu.page = 0},tag=bs.debug.mapedit.sphere] ["", {"text": "   sphere: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.mapedit.sphere"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.mapedit] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.mapedit.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Bookshelf Menu / Debug / mapedit", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.mapedit.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]