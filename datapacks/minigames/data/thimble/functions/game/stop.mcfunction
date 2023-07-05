tellraw @a[x=129,y=98,z=19,distance=..35] ["",{"text":"THIMBLE > ","color":"yellow"},{"text":"Game over!","color":"gray"}]

function thimble:map/reset
function thimble:player/reset_all

scoreboard players set THIMBLE gameStarted 0
