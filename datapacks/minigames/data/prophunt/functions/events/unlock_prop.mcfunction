# Executed as and at the player
# tellraw @a {"text":"prophunt:events/unlock_prop"}

# Sound effect
playsound minecraft:block.weeping_vines.break master @s ~ ~ ~ 0.1 2 0

# Identify locked player (source)
tag @s add prophunt.unlock_prop.player

# Kill associated locker 
execute as @e[tag=prophunt.locker] if score @s prophunt.parent_UUID = @a[tag=prophunt.unlock_prop.player,limit=1,sort=nearest] UUID run kill @s

# Remove identification tag
tag @s remove prophunt.unlock_prop.player

# Remove lock state tag
tag @s remove prophunt.is_locked