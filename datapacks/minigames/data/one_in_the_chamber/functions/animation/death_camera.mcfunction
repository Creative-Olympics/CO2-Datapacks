# Executed as & at death camera entities
# tellraw @a [{"text":"oitc:animation/death_camera on "},{"selector":"@s"}]

# Security (kill cameras not associated with a player)
execute unless entity @p[team=oitc,gamemode=spectator,distance=..5,scores={oitc_time_since_death=0..40}] run kill @s

# Camera animation
tp @s ^ ^ ^-0.1 ~ ~0.5

# Force spectate
spectate @s @p[team=oitc,gamemode=spectator,distance=..5,scores={oitc_time_since_death=2..}]
