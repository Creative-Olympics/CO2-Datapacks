tag @s add prophunt.is_locked
function prophunt:climb/stop

execute as @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal,limit=1] \
  at @s \
  align xyz \
  run function prophunt:prop/abilities/lock/tp_display

execute if entity @s[advancements={prophunt:prop_lock={interact=true}}] \
  as @e[type=minecraft:block_display,tag=prophunt.display,predicate=bs.id:suid_equal,limit=1] \
  on passengers \
  if entity @s[type=minecraft:interaction] \
  run function prophunt:prop/abilities/lock/clear_hitbox

playsound minecraft:block.ancient_debris.step master @s ~ ~ ~ 0.3 2 0
