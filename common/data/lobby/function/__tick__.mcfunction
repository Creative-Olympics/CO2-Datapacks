execute as @a[gamemode=!spectator,predicate=lobby:below_world] positioned -44 100 -137 rotated 0 0 run function #common:relocalize_player

execute as @a[team=lobby,scores={lobby.horse_cooldown=1..}] run function lobby:horse/cooldown

execute as @a[team=lobby,advancements={lobby:inventory_changed=true}] run function lobby:events/inventory_changed

execute as @e[type=minecraft:horse,predicate=!lobby:has_passengers] run function lobby:horse/kill
kill @e[type=minecraft:item,tag=!permanent]

