# Executed as & at player
# tellraw @a {"text":"prophunt:features/control_title/main"}

execute as @a[tag=prophunt.is_prop] at @s run function prophunt:features/control_title/make_prop
execute as @a[tag=prophunt.is_hunter] at @s run function prophunt:features/control_title/make_hunter