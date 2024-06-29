# Executed globally
# tellraw @a {"text":"prophunt:start"}


scoreboard players operation $prophunt.ultimate_cost data = $prophunt.game_time data
scoreboard players set @a[tag=prophunt.is_hunter] prophunt.ultimate_points 0
scoreboard players set @a[tag=prophunt.is_hunter] prophunt.ultimate_timer 0
scoreboard players set @a[tag=prophunt.is_prop] prophunt.dash_cooldown 0
