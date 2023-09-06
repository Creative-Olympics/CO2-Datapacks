# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:events/prop_hitbox_attacked"}

# Get attacker UUID
execute store result score @s data run data get entity @s attack.player[0]

# Identify attacked hitbox
tag @s add prophunt.prop_hitbox_attacked.hitbox
# Identify the attacker
execute as @a[team=prophunt] if score @s UUID = @e[tag=prophunt.prop_hitbox_attacked.hitbox,limit=1,sort=nearest] data run tag @s add prophunt.prop_hitbox_attacked.attacker
# Identify attacked player
execute as @a[team=prophunt] if score @s UUID = @e[tag=prophunt.prop_hitbox_attacked.hitbox,limit=1,sort=nearest] prophunt.parent_UUID run tag @s add prophunt.prop_hitbox_attacked.player

# If the attacker is an hunter -> kill the prop
execute if entity @a[tag=prophunt.prop_hitbox_attacked.attacker,tag=prophunt.hunter] as @p[tag=prophunt.prop_hitbox_attacked.player] run function prophunt:events/killed_prop

# If the attacker is th prop himself -> lock the prop
tag @a[tag=prophunt.prop_hitbox_attacked.attacker,tag=prophunt.prop_hitbox_attacked.player,tag=prophunt.is_locked] add prophunt.unlock
execute as @a[tag=prophunt.prop_hitbox_attacked.attacker,tag=prophunt.prop_hitbox_attacked.player,tag=!prophunt.is_locked] at @s run function prophunt:events/lock_prop
execute as @a[tag=prophunt.prop_hitbox_attacked.attacker,tag=prophunt.prop_hitbox_attacked.player,tag=prophunt.unlock] at @s run function prophunt:events/unlock_prop
tag @a remove prophunt.unlock

# Remove identification tags
tag @s remove prophunt.prop_hitbox_attacked.hitbox
tag @a remove prophunt.prop_hitbox_attacked.attacker
tag @a remove prophunt.prop_hitbox_attacked.player