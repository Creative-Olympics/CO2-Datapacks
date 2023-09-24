
execute as @a[team=magma_run] at @s run function #magma_run:reset_player

execute as @a[tag=tnt_run.lastAlive] at @s run summon firework_rocket ~ ~ ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,4312372,14602026,6719955],FadeColors:[I;11743532,4312372,14602026,6719955]}],Flight:1}}}}


execute if entity @s[tag=canLaunchGames] run playsound minecraft:block.stone_button.click_on master @a[x=-216,y=100,z=17,distance=..35] ~ ~ ~ 2 2 1
execute if entity @a[tag=tnt_run.lastAlive] run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"TNT RUN >","color":"yellow"},{"text":" Game over! Congratulations to ","color":"gray"},{"selector":"@a[tag=tnt_run.lastAlive]"},{"text":"!","color":"gray"}]
# execute unless entity @a[tag=tnt_run.lastAlive] run tellraw @a[x=-216,y=100,z=17,distance=..35] ["",{"text":"TNT RUN >","color":"yellow"},{"text":" Game cancelled, there is no more players in the arena :/","color":"gray"}]

function tnt_run:reset

scoreboard players set TNT_RUN gameStarted 0

tag @a remove tnt_run.lastAlive
