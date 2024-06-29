# Increment anim frame
scoreboard players add @s relocalize_player.frame 1
scoreboard players set #lib.relocalize_player.animate data 1

# Identify player spectating
scoreboard players operation $id.suid bs.in = @s bs.id
spectate @s @a[predicate=bs.id:suid_equal,limit=1]

# Ascending phase
execute if score @s relocalize_player.frame matches 1..20 run function #bs.position:add_pos {scale:0.001}

# Horizontal phase
execute if score @s relocalize_player.frame matches 30 run function lib:relocalize_player/get_velocity/horizontal
execute if score @s relocalize_player.frame matches 31..50 run function #bs.position:add_pos {scale:0.001}

# Descending phase
execute if score @s relocalize_player.frame matches 60 run function lib:relocalize_player/get_velocity/descending
execute if score @s relocalize_player.frame matches 61..80 run function #bs.position:add_pos {scale:0.001}

# Stopping phase
execute if score @s relocalize_player.frame matches 81.. as @a[predicate=bs.id:suid_equal,limit=1] at @s run function lib:relocalize_player/stop
execute if score @s relocalize_player.frame matches 81.. run kill @s
