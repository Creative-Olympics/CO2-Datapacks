
function dropper:stop/stop
scoreboard objectives add dropper.pos_y.memory dummy

team add dropper
team modify dropper color green
team modify dropper friendlyFire false
team modify dropper seeFriendlyInvisibles true
team modify dropper collisionRule never