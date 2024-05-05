scoreboard players operation $check jump.step = @s jump.step
execute if entity @a[team=jump,predicate=jump:check_step] at @s run function #jump:triggers/as_checkpoint with entity @s data.jump.checkpoint_properties
