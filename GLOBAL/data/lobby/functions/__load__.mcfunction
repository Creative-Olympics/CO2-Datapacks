
# Horse -----------------------------------------------------------------------

scoreboard objectives add lobby.horse.cooldown dummy

# Compass ---------------------------------------------------------------------

scoreboard objectives add lobby.compass.select dummy
scoreboard objectives add lobby.compass.drop_trigger minecraft.custom:minecraft.drop

# Maps ------------------------------------------------------------------------

function lobby:maps/summon/all

# Others ----------------------------------------------------------------------

scoreboard players set 20 const 20