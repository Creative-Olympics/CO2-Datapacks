# Executed as and at the attacked interaction
# tellraw @a {"text":"prophunt:events/stun_hunters"}

function prophunt:events/unlock_prop

playsound minecraft:entity.firework_rocket.blast master @a[distance=..15] ~ ~ ~ 2 2 1

particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
particle minecraft:firework ~ ~ ~ 0 0 0 0.3 100 force

scoreboard players set @s prophunt.stun_hunters_cooldown 500

scoreboard players set @a[tag=prophunt.is_hunter,distance=..7] prophunt.stuned 100