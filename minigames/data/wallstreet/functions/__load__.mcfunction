
scoreboard objectives add vel.x dummy
scoreboard objectives add vel.y dummy
scoreboard objectives add vel.z dummy

scoreboard objectives add wallstreet.wood_price dummy
scoreboard objectives add wallstreet.stone_price dummy
scoreboard objectives add wallstreet.leather_price dummy
scoreboard objectives add wallstreet.iron_price dummy
scoreboard objectives add wallstreet.diamond_price dummy

scoreboard objectives add wallstreet.wood_quantity dummy
scoreboard objectives add wallstreet.stone_quantity dummy
scoreboard objectives add wallstreet.leather_quantity dummy
scoreboard objectives add wallstreet.iron_quantity dummy
scoreboard objectives add wallstreet.diamond_quantity dummy

scoreboard objectives add wallstreet.wood_max_quantity dummy
scoreboard objectives add wallstreet.stone_max_quantity dummy
scoreboard objectives add wallstreet.leather_max_quantity dummy
scoreboard objectives add wallstreet.iron_max_quantity dummy
scoreboard objectives add wallstreet.diamond_max_quantity dummy

scoreboard objectives add wallstreet.selected_quantity dummy
scoreboard objectives add wallstreet.selected_resource dummy
scoreboard objectives add wallstreet.budget dummy

scoreboard objectives add wallstreet.compass.select dummy
scoreboard objectives add wallstreet.compass.drop_trigger minecraft.custom:minecraft.drop

function wallstreet:stop/stop

team add wallstreet
team modify wallstreet color yellow