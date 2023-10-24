# Executed as & at joining player
# tellraw @a {"text":"global:events/join"}

# Reset player when joining the game
function #prophunt:reset_player
function #magma_run:reset_player

team join lobby @s
effect clear @s

summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;365568,5181439,16711680,16772874,0]}]}}}}
