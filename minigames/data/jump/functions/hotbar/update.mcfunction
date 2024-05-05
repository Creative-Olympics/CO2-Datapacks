scoreboard players operation $check jump.step = @s jump.step
function jump:hotbar/replace with entity @e[type=marker,tag=jump.checkpoint,predicate=jump:check_step,limit=1] data.jump.checkpoint_properties

advancement revoke @s only jump:replace_hotbar
