# Executed as and at the prop
# tellraw @a {"text":"prophunt:events/taunt_title"}

scoreboard players operation #prophunt.taunt_countdown data = @s prophunt.taunt_timer
scoreboard players operation #prophunt.taunt_countdown data /= 20 data

scoreboard players operation #prophunt.taunt_title_refresh data = @s prophunt.taunt_timer
scoreboard players operation #prophunt.taunt_title_refresh data %= 20 data

execute if score #prophunt.taunt_title_refresh data matches 0 run title @s times 0 20 20
execute if score #prophunt.taunt_title_refresh data matches 0 run title @s title {"text": " "}
execute if score #prophunt.taunt_title_refresh data matches 0 run title @s subtitle [{"text": "Taunt in ","color":"red"},{"score":{"name": "#prophunt.taunt_countdown","objective": "data"},"color":"yellow"},{"text": "s","color":"red"}]