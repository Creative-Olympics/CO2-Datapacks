# Executed globally
# tellraw @a {"text":"oitc:triggers/respawn"}

# Respawn
execute as @a[team=oitc,gamemode=spectator,scores={oitc_time_since_death=40}] at @s run function one_in_the_chamber:events/respawn