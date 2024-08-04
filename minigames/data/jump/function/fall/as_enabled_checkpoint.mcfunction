# If the player fall, TP on last checkpoint
$execute as @a[team=jump,scores={jump.step=2..},predicate=jump:check_step] at @s if entity @s[y=$(y_limit),dy=-100] run function jump:fall/tp
