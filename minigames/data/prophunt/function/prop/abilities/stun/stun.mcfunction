scoreboard players set @s prophunt.prop_stun_cooldown 500

function prophunt:prop/abilities/lock/stop

particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
particle minecraft:firework ~ ~ ~ 0 0 0 0.3 100 force

playsound minecraft:entity.firework_rocket.blast master @a[distance=..15] ~ ~ ~ 2 2 1

execute as @a[tag=prophunt.is_hunter,distance=..7] at @s run function prophunt:hunter/stunned/start
