execute as @a[team=boat_royal,predicate=!boat_royal:has_vehicle] run function boat_royal:stop/leave
execute unless entity @a[team=boat_royal] run function #boat_royal:events/stop
