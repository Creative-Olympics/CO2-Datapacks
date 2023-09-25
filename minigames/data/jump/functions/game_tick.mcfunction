execute as @a[team=jump] unless data entity @s Inventory[{Slot:4b}] run clear @s
kill @e[type=item,nbt={Item:{id:"minecraft:compass"}}]

function #jump:timer
function #jump:stop
function #jump:checkpoint

scoreboard players add @a[team=jump] jump.timer 1
scoreboard players add @a[team=jump] jump.checkpoint_timer 1