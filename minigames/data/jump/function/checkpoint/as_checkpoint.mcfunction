# Detect if the player passed the checkpoint
$execute as @a[team=jump,predicate=jump:check_step,distance=..$(size)] run function jump:checkpoint/activate

# Particle effects
tp @s ~ ~ ~ ~10 0
particle minecraft:dust{color:[0.565,0.000,1.000],scale:1} ~ ~ ~ 0 5 0 0 10 normal @a[team=jump,predicate=jump:check_step]
$particle minecraft:totem_of_undying ^ ^ ^$(size) 0.1 0.1 0.1 0 3 normal @a[team=jump,predicate=jump:check_step]
$particle minecraft:totem_of_undying ^ ^ ^-$(size) 0.1 0.1 0.1 0 3 normal @a[team=jump,predicate=jump:check_step]
