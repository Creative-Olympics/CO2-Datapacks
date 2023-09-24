
scoreboard objectives add jump.timer dummy
scoreboard objectives add jump.time_left dummy
scoreboard objectives add jump.step dummy
scoreboard objectives add jump.jump_trigger minecraft.custom:minecraft.jump

team add jump
team modify jump prefix [{"text":"JUMP","italic":true,"bold":true,"color":"gray"},{"text":" | ","italic":false,"bold":false,"color":"gray"}]
team modify jump color dark_purple
team modify jump collisionRule never
team modify jump friendlyFire false