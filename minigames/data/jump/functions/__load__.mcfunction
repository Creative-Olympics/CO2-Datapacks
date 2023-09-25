
execute as @a[team=jump] at @s run function #jump:reset_player

scoreboard objectives add jump.timer dummy
scoreboard objectives add jump.checkpoint_timer dummy
scoreboard objectives add jump.time_left dummy
scoreboard objectives add jump.step dummy
scoreboard objectives add jump.jump_trigger minecraft.custom:minecraft.jump

team add jump
team modify jump color dark_purple
team modify jump collisionRule never
team modify jump friendlyFire false

function jump:checkpoint/place_all