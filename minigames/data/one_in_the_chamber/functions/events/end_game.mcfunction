# executed globally
# tellraw @a {"text":"oitc:events/end_game"}

# Summon eng game camera
summon armor_stand -183.0 112.0 -107.0 {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["oitc_end_game_camera"]}
tp @e[tag=oitc_end_game_camera] -183.0 112.0 -107.0 0 30

# Prevent dead peopl to respawn
scoreboard players set @a[team=oitc] oitc_time_since_death 100

# Set gamemode to spectator
gamemode spectator @a[team=oitc]

# Start end game timer
scoreboard players set #OITC:end_game_timer data 1