
# Force player to respawn at his last location
execute as @a[team=oitc] at @s run spawnpoint @s ~ ~ ~ ~

execute as @a[team=oitc,gamemode=spectator,scores={oitc_time_since_death=40}] at @s run function one_in_the_chamber:respawn/respawn