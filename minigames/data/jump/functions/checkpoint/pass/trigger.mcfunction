# Detect if the player passed the checkpoint
$execute as @a[team=jump,predicate=jump:check_step,distance=..$(size)] run function jump:checkpoint/pass/activate
