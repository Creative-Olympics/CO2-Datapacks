# Executed as and at the player
# tellraw @a [{"selector":"@s"},{"text":" > prophunt:dash/stop","color":"gray"}]

tag @s add prophunt.dash.player
execute as @e[tag=prophunt.dash] if score @s parent.SUID = @p[tag=prophunt.dash.player] SUID run kill @s

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5

effect clear @s invisibility

function prophunt:utils/give_items/hunter
scoreboard players set @s prophunt.drop_trigger 0
scoreboard players set @s prophunt.jump_trigger 1
effect clear @s speed
effect give @s[scores={prophunt.ultimate_timer=1..}] speed infinite 4 true

scoreboard players set @s prophunt.dash_cooldown 200