# Executed as and at the player
# tellraw @a {"text":"prophunt:features/lock_position/lock"}

# Ride locker entity
execute align xz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1,Small:1,Invisible:1,Tags:["prophunt.entity","prophunt.locker","prophunt.locker.new"]}

# Align the locker's orientation to the grid
execute if entity @s[y_rotation=-45..45] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 0 0
execute if entity @s[y_rotation=45..135] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 90 0
execute if entity @s[y_rotation=135..225] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=225..315] as @e[tag=prophunt.locker.new] at @s run tp @s ~ ~ ~ 270 0

# Associate the locker to the player
execute align xz run scoreboard players operation @e[tag=prophunt.locker.new,limit=1,sort=nearest] parent.SUID = @s SUID
tag @e remove prophunt.locker.new

# Stop climb
function prophunt:features/climb/stop

# Force ride
function prophunt:utils/force_ride_locker

# Force stop climbing
scoreboard players set @s prophunt.climb 0
scoreboard players set @s prophunt.jump_trigger 0

# Sound effect
playsound minecraft:block.ancient_debris.step master @s ~ ~ ~ 0.3 2 0

# Adding lock state tag
tag @s add prophunt.is_locked
