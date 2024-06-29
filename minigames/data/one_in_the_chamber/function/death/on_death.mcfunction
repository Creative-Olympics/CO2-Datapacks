# Firework effect
particle flash ~ ~1 ~ 0 0 0 0 1 normal
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0.3 0.5 0.5 1 100 normal
playsound entity.firework_rocket.blast master @a[distance=..30] ~ ~ ~ 1 1 1

# Summon death camera
execute if entity @s[predicate=!bs.id:has_suid] run function #bs.id:give_suid
scoreboard players operation $id.suid bs.in = @s bs.id
execute at @s summon block_display run function one_in_the_chamber:death/setup_camera
scoreboard players set @s oitc.respawn_timer 40
gamemode spectator

# Detect and reward the killer
tag @a[team=oitc] add oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b0=false}}] run tag @a[team=oitc,tag=oitc.b0] remove oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b1=false}}] run tag @a[team=oitc,tag=oitc.b1] remove oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b2=false}}] run tag @a[team=oitc,tag=oitc.b2] remove oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b3=false}}] run tag @a[team=oitc,tag=oitc.b3] remove oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b4=false}}] run tag @a[team=oitc,tag=oitc.b4] remove oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b5=false}}] run tag @a[team=oitc,tag=oitc.b5] remove oitc.source
execute if entity @s[advancements={one_in_the_chamber:on_death={b6=false}}] run tag @a[team=oitc,tag=oitc.b6] remove oitc.source
advancement revoke @s only one_in_the_chamber:on_death

execute unless entity @a[team=oitc,tag=oitc.source,limit=1] run return 0
tellraw @a[team=oitc] [{"text":"OITC > ","color":"red","bold":true}, {"selector":"@s","bold":false}, {"text":" was killed by ","color":"gray","bold":false}, {"selector":"@a[team=oitc,tag=oitc.source,limit=1]","bold":false}]
clear @a[team=oitc,tag=oitc.source,limit=1] arrow
loot give @a[team=oitc,tag=oitc.source,limit=1] loot one_in_the_chamber:arrow
tag @a[team=oitc,tag=oitc.source] remove oitc.source
