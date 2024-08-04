execute if score $prophunt.remaining_time data matches ..0 run function #prophunt:events/stop
execute unless score $prophunt.prop_count data matches 1.. run function #prophunt:events/stop
execute unless score $prophunt.hunter_count data matches 1.. run function #prophunt:events/stop
