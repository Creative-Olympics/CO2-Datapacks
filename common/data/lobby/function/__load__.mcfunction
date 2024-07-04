scoreboard objectives add lobby.compass_id dummy
scoreboard objectives add lobby.horse_cooldown dummy
scoreboard objectives add lobby.minimap_hover dummy

scoreboard players set -128 const -128
scoreboard players set 128 const 128

function lobby:minimap/spawn_all
