scoreboard players set @s prophunt.hunter_stunned 100

effect give @s blindness infinite 255 true
attribute @s minecraft:generic.jump_strength modifier add prophunt:stunned -1000 add_value
attribute @s minecraft:generic.movement_speed modifier add prophunt:stunned -1000 add_value
attribute @s minecraft:player.entity_interaction_range modifier add prophunt:stunned -1000 add_value

function prophunt:hunter/stunned/process
