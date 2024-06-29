clear @s

effect give @s speed infinite 10 true
effect give @s jump_boost infinite 5 true

particle dust{color:[0.667,0.0,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 1 500 force
playsound minecraft:entity.allay.item_given master @a[distance=..7] ~ ~ ~ 2 2 0

function prophunt:prop/abilities/lock/stop
scoreboard players operation $id.suid bs.in = @s bs.id
execute as @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal] run function prophunt:prop/display/kill
scoreboard players set @s prophunt.prop_switch_cooldown 120
