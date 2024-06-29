kill @e[type=minecraft:item,tag=!permanent]

# Prevent players to jump in the void -----------------------------------------
execute as @a[gamemode=!spectator,predicate=lobby:below_world] positioned -44 100 -137 rotated 0 0 run function #lib:relocalize_player
