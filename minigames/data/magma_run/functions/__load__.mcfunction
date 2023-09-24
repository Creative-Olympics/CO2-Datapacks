# Place start signs
function magma_run:start/place_starting_signs

function #magma_run:stop

team add magma_run
team modify magma_run prefix [{"text":"MAGMA RUN","italic":true,"bold":true,"color":"gray"},{"text":" | ","italic":false,"bold":false,"color":"gray"}]
team modify magma_run color gold
team modify magma_run collisionRule always
team modify magma_run friendlyFire true
