# Triggers
scoreboard objectives add prophunt.drop minecraft.custom:minecraft.drop
scoreboard objectives add prophunt.jump minecraft.custom:minecraft.jump
scoreboard objectives add prophunt.use_coas minecraft.used:minecraft.carrot_on_a_stick

# Climb
scoreboard objectives add prophunt.climb dummy
scoreboard objectives add prophunt.climb.y dummy

# Prop
scoreboard objectives add prophunt.prop_lock dummy
scoreboard objectives add prophunt.prop_type dummy
scoreboard objectives add prophunt.prop_variation dummy
scoreboard objectives add prophunt.prop_variation_limit dummy
scoreboard objectives add prophunt.prop_variation_cooldown dummy
scoreboard objectives add prophunt.prop_switch_cooldown dummy
scoreboard objectives add prophunt.prop_stun_cooldown dummy
scoreboard objectives add prophunt.prop_taunt_timer dummy

# Hunters
scoreboard objectives add prophunt.hunter_stunned dummy
scoreboard objectives add prophunt.hunter_ping_stack dummy
scoreboard objectives add prophunt.hunter_ping_cooldown dummy
scoreboard objectives add prophunt.hunter_dash_cooldown dummy
scoreboard objectives add prophunt.hunter_ultimate_points dummy
scoreboard objectives add prophunt.hunter_ultimate_timer dummy


team add prophunt
team modify prophunt collisionRule never
team modify prophunt color blue
team modify prophunt friendlyFire true
team modify prophunt nametagVisibility never
team modify prophunt seeFriendlyInvisibles false

scoreboard players set $prophunt.game_duration data 6000
scoreboard players set $prophunt.hunter_ultimate_cost data 6000
