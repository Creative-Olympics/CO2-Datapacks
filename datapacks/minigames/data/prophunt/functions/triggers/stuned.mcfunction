# Executed globally
# tellraw @a {"text":"prophunt:triggers/stuned"}

execute as @a[tag=prophunt.is_hunter,scores={prophunt.stuned=1..}] run function prophunt:events/stuned

effect clear @a[tag=prophunt.is_hunter,scores={prophunt.stuned=0}] slowness
effect clear @a[tag=prophunt.is_hunter,scores={prophunt.stuned=0}] mining_fatigue