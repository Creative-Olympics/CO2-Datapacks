# Executed as and at the attacked interaction
# tellraw @a [{"selector":"@s"},{"text":" > prophunt:kill_prop/check_hunter","color":"gray"}]

# Get attacker SUID
execute store result score #check_UUID data run data get entity @s attack.player[0]

# Identify the attacker
tag @a remove prophunt.current.hunter
execute as @a[tag=prophunt.is_hunter] if score @s UUID = #check_UUID data run tag @s add prophunt.current.hunter
execute if entity @a[tag=prophunt.current.hunter,scores={prophunt.stuned=0}] run function prophunt:kill_prop/run