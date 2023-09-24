# Executed globally
# tellraw @a {"text":"prophunt:__load__"}

# Controls
scoreboard objectives add prophunt.drop_trigger minecraft.custom:minecraft.drop

# Prop switch
scoreboard objectives add prophunt.prop_switch_cooldown dummy
scoreboard objectives add prophunt.prop_type dummy
scoreboard objectives add prophunt.prop_variation dummy

# Climb
scoreboard objectives add prophunt.jump_trigger minecraft.custom:minecraft.jump
scoreboard objectives add prophunt.climb dummy
scoreboard objectives add prophunt.pos.y.last dummy

# Stun
scoreboard objectives add prophunt.stun_hunters_cooldown dummy
scoreboard objectives add prophunt.stuned dummy

# Taunt
scoreboard objectives add prophunt.taunt_timer dummy

# Dash
scoreboard objectives add prophunt.dash_timer dummy
scoreboard objectives add prophunt.dash_cooldown dummy

# Ping
scoreboard objectives add prophunt.use_item_trigger minecraft.used:minecraft.carrot_on_a_stick

# Ultimate
scoreboard objectives add prophunt.ultimate_points dummy
scoreboard objectives add prophunt.ultimate_timer dummy

team add prophunt
team modify prophunt collisionRule never
team modify prophunt color blue
team modify prophunt friendlyFire false
team modify prophunt nametagVisibility never
team modify prophunt seeFriendlyInvisibles false

function prophunt:stop/stop
schedule clear prophunt:start/place_starting_sign
function prophunt:start/place_starting_sign
# function prophunt:start

scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 20 const 20
scoreboard players set 60 const 60
scoreboard players set 100 const 100
