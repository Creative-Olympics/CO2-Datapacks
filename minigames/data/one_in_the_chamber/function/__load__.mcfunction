team add oitc
team modify oitc color red
team modify oitc friendlyFire true
team modify oitc collisionRule pushOwnTeam
team modify oitc nametagVisibility never

scoreboard objectives add oitc.kill_count playerKillCount {"text":" OITC ","color":"red","bold":true,"italic":true}
scoreboard objectives add oitc.respawn_timer dummy
