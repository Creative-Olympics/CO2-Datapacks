# Executed as and at an entity
# tellraw @a {"text":"prophunt:utils/get_associated_entities"}

# Reset previous check
tag @a remove prophunt.current.player
tag @e remove prophunt.current.display
tag @e remove prophunt.current.interaction
tag @e remove prophunt.current.locker

# Get SUID of the player
execute if entity @s[type=player] run scoreboard players operation #prophunt.check_SUID data = @s SUID
execute if entity @s[type=!player] run scoreboard players operation #prophunt.check_SUID data = @s parent.SUID

# Tag the associated entities
execute as @a if score @s SUID = #prophunt.check_SUID data run tag @s add prophunt.current.player
execute as @e[tag=prophunt.display] if score @s parent.SUID = #prophunt.check_SUID data run tag @s add prophunt.current.display
execute as @e[tag=prophunt.interaction] if score @s parent.SUID = #prophunt.check_SUID data run tag @s add prophunt.current.interaction
execute as @e[tag=prophunt.locker] if score @s parent.SUID = #prophunt.check_SUID data run tag @s add prophunt.current.locker

# If there is no locker, then the player will act as the locker
execute unless entity @e[tag=prophunt.current.locker] run tag @a[tag=prophunt.current.player] add prophunt.current.locker

# say ---------
# say Player: @a[tag=prophunt.current.player]
# say Display: @e[tag=prophunt.current.display]
# say Interaction: @e[tag=prophunt.current.interaction]
# say Locker: @e[tag=prophunt.current.locker]