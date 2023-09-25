execute unless entity @a[team=jump] run kill @e[tag=jump.checkpoint]
execute unless entity @a[team=jump] run scoreboard players set $jump.checkpoint_count data 0
function #jump:start