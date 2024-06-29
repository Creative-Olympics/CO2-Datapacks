execute as @a[team=prophunt,tag=prophunt.is_prop,tag=!prophunt.is_locked] at @s run function prophunt:prop/display/sync

execute as @a[team=prophunt,tag=prophunt.is_hunter] run function prophunt:hunter/actionbar
execute as @a[team=prophunt,tag=prophunt.is_prop] run function prophunt:prop/actionbar

execute store result score $prophunt.prop_count data if entity @a[team=prophunt,tag=prophunt.is_prop]
execute store result score $prophunt.hunter_count data if entity @a[team=prophunt,tag=prophunt.is_hunter]

execute at @a[team=prophunt] as @e[type=horse,tag=lobby.horse,distance=..3] run function lobby:horse/kill

advancement revoke @a[team=prophunt,advancements={prophunt:inventory_changed=true}] only prophunt:inventory_changed
