# Executed as and at the player
# tellraw @a {"text":"prophunt:features/dash/stop"}

execute at @s align xz run tp @s ~0.5 ~0.25 ~0.5

tag @s add prophunt.dash.player
execute as @e[tag=prophunt.dash] if score @s prophunt.parent_SUID = @p[tag=prophunt.dash.player] SUID run kill @s

function prophunt:utils/give_items/hunter
scoreboard players set @s prophunt.drop_trigger 0
scoreboard players set @s prophunt.jump_trigger 1
effect clear @s speed