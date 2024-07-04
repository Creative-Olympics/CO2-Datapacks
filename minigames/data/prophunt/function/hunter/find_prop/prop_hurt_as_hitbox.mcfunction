execute on vehicle run scoreboard players operation $id.suid bs.in = @s bs.id
execute as @a[team=prophunt,tag=prophunt.is_prop,predicate=bs.id:suid_equal] at @s run function prophunt:hunter/find_prop/on_victim
