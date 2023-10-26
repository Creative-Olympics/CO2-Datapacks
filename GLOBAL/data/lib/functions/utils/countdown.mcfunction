
scoreboard objectives add countdown dummy

# Countdown title
execute as @a[scores={countdown=1..}] run title @s times 0 20 20
execute as @a[scores={countdown=1..}] run title @s title {"text":" "}
execute as @a[scores={countdown=1}] run title @s subtitle {"text":" "}
execute as @a[scores={countdown=1..}] run scoreboard players operation @s ctx = @s countdown
execute as @a[scores={countdown=1..}] run scoreboard players operation @s ctx /= 20 const
execute as @a[scores={countdown=1..}] run scoreboard players add @s ctx 1
execute as @a[scores={countdown=2..}] run title @s subtitle {"score":{"name":"@s","objective":"ctx"},"color":"yellow"}
execute as @a[scores={countdown=1..}] run scoreboard players operation @s ctx = @s countdown
execute as @a[scores={countdown=1..}] run scoreboard players operation @s ctx %= 20 const
execute as @a[scores={ctx=0,countdown=1..100}] run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 2 1 1
scoreboard players remove @a[scores={countdown=1..}] countdown 1
scoreboard players add @a[scores={countdown=..-1}] countdown 1
