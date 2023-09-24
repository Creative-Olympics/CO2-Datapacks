# Executed as and at player
# tellraw @a {"text":"prophunt:reset_player"}

team leave @s
effect clear @s invisibility
effect clear @s speed
effect clear @s jump_boost
effect clear @s slowness
effect clear @s levitation
effect clear @s blindness
effect clear @s mining_fatigue
effect clear @s regeneration
effect clear @s resistance
effect clear @s saturation
clear @s
tag @s remove prophunt.is_hunter
tag @s remove prophunt.is_prop
tag @s remove prophunt.was_prop
tag @s remove prophunt.dash.player
tag @s remove prophunt.current.player
tag @s remove prophunt.current.locker