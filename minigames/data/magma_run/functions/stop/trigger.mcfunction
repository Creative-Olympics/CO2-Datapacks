execute store result score #result data if entity @a[team=magma_run]
execute if score #result data matches ..1 run function #magma_run:events/stop
