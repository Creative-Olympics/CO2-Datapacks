# Executed as & at player
tellraw @a [{"text":"oitc:events/respawn on "},{"selector":"@s"}]

# Remove camera
kill @e[tag=oitc_death_camera,sort=nearest,limit=1]

# Set gamemode
gamemode adventure

tp @s -183 97 -86 0 0