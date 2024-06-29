# If the player fall in water inside of the zone -> success
execute at @s[predicate=dropper:in_dropzone] if block ~ ~ ~ #dropper:water run return run function dropper:jump/success
# If the player fall in water outside of the zone -> fail
execute at @s if block ~ ~ ~ #dropper:water run return run function dropper:jump/failure/missed_zone
# If the player fall on a block -> fail
function dropper:jump/failure/fell_on_block
