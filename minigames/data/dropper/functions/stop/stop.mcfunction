
execute as @a[team=dropper] at @s run function dropper:stop/reset_player
function dropper:map/place_starting_sign
function dropper:map/reset


scoreboard players set #dropper.game_started data 0