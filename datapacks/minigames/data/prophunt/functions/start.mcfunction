# Executed globally
# tellraw @a {"text":"prophunt:start"}

team join prophunt @a

scoreboard players add @a prophunt.drop_trigger 0
scoreboard players add @a prophunt.prop_type 0
scoreboard players add @a prophunt.stun_hunters_cooldown 0

# Make teams
scoreboard players set $prophunt.player_count data 0
execute as @a[team=prophunt,sort=random] store result score @s data run scoreboard players add $prophunt.player_count data 1
scoreboard players operation $prophunt.player_count data /= 2 data
execute as @a[team=prophunt] if score @s data > $prophunt.player_count data run tag @s add prophunt.is_prop
tag @a[team=prophunt,tag=!prophunt.is_prop] add prophunt.is_hunter
gamemode adventure @a[team=prophunt]

# function prophunt:make_teams with prophunt:data

effect give @a[tag=prophunt.is_prop] minecraft:invisibility infinite 1 true
execute as @a[tag=prophunt.is_prop] at @s run function prophunt:events/switch_prop_end