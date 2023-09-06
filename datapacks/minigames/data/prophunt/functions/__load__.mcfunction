# Executed globally
# tellraw @a {"text":"prophunt:__load__"}

scoreboard objectives add prophunt.drop_trigger minecraft.custom:minecraft.drop
scoreboard objectives add prophunt.prop_type dummy
scoreboard objectives add prophunt.jump_trigger minecraft.custom:minecraft.jump
scoreboard objectives add prophunt.crouch_trigger minecraft.custom:minecraft.sneak_time
scoreboard objectives add prophunt.climb dummy
scoreboard objectives add prophunt.pos.y.last dummy
scoreboard objectives add prophunt.prop_switch_cooldown dummy
scoreboard objectives add prophunt.stun_hunters_cooldown dummy
scoreboard objectives add prophunt.stuned dummy

scoreboard objectives add prophunt.parent_UUID dummy

team add prophunt
team modify prophunt collisionRule never
team modify prophunt color blue
team modify prophunt friendlyFire false
team modify prophunt nametagVisibility never
team modify prophunt seeFriendlyInvisibles false

function prophunt:stop
function prophunt:start

scoreboard players set 2 data 2
scoreboard players set 20 data 20