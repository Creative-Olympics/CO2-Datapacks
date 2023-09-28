# Executed globally
# tellraw @a {"text":"oitc:triggers/death"}

# Run death event when timeSinceDeath is reseted
execute as @a[team=oitc,gamemode=adventure,scores={oitc_time_since_death=0}] at @s run function one_in_the_chamber:death/start
scoreboard players set @a oitc_damage_resisted 0

# Death camera animation
execute as @e[tag=oitc_death_camera] at @s run function one_in_the_chamber:death/animation