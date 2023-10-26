
scoreboard objectives add vel.x dummy
scoreboard objectives add vel.y dummy
scoreboard objectives add vel.z dummy

scoreboard objectives add wallstreet.wood_price dummy
scoreboard objectives add wallstreet.stone_price dummy
scoreboard objectives add wallstreet.leather_price dummy
scoreboard objectives add wallstreet.iron_price dummy
scoreboard objectives add wallstreet.diamond_price dummy

scoreboard objectives add wallstreet.wood_current_stock dummy
scoreboard objectives add wallstreet.stone_current_stock dummy
scoreboard objectives add wallstreet.leather_current_stock dummy
scoreboard objectives add wallstreet.iron_current_stock dummy
scoreboard objectives add wallstreet.diamond_current_stock dummy

scoreboard objectives add wallstreet.wood_max_stock dummy
scoreboard objectives add wallstreet.stone_max_stock dummy
scoreboard objectives add wallstreet.leather_max_stock dummy
scoreboard objectives add wallstreet.iron_max_stock dummy
scoreboard objectives add wallstreet.diamond_max_stock dummy

scoreboard objectives add wallstreet.selected_quantity dummy
scoreboard objectives add wallstreet.selected_resource dummy
scoreboard objectives add wallstreet.budget dummy

scoreboard objectives add wallstreet.compass.select dummy
scoreboard objectives add wallstreet.compass.drop_trigger minecraft.custom:minecraft.drop

function wallstreet:stop/stop

team add wallstreet
team modify wallstreet color yellow