advancement revoke @s only prophunt:prop_hurt_as_hunter

tag @s add prophunt.is_attacker
execute as @e[type=minecraft:interaction,tag=prophunt.hitbox] \
  if function prophunt:hunter/find_prop/is_victim \
  on vehicle \
  run scoreboard players operation $id.suid bs.in = @s bs.id
execute as @a[team=prophunt,tag=prophunt.is_prop,predicate=bs.id:suid_equal] at @s run function prophunt:hunter/find_prop/on_victim
tag @s remove prophunt.is_attacker
