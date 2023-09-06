# Executed as and at the player
# tellraw @a {"text":"prophunt:events/lock_prop"}

# Identify locked player (source)
tag @s add prophunt.lock_prop.player

# Ride locker entity
execute align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1,Small:1,Invisible:1,Tags:["prophunt","prophunt.locker","prophunt.locker.new"]}
execute if entity @s[y_rotation=-45..45] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 0 0
execute if entity @s[y_rotation=45..135] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 90 0
execute if entity @s[y_rotation=135..225] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=225..315] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 270 0
execute align xz run scoreboard players operation @e[tag=prophunt.locker.new,limit=1,sort=nearest] prophunt.parent_UUID = @s UUID
tag @e remove prophunt.locker.new
function prophunt:mechanics/force_ride_locker

# Force stop climbing
scoreboard players set @a[scores={prophunt.crouch_trigger=1..}] prophunt.climb 0
scoreboard players set @a[scores={prophunt.crouch_trigger=1..}] prophunt.jump_trigger 0

# Sound effect
playsound minecraft:block.ancient_debris.step master @s ~ ~ ~ 0.3 2 0

# Removing identification tags
tag @s remove prophunt.lock_prop.player

# Adding lock state tag
tag @s add prophunt.is_locked
