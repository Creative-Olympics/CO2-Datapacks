advancement revoke @s only common:on_login

execute if entity @s[team=!lobby] run function #common:join_lobby

summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;365568,5181439,16711680,16772874,0]}]}}}}
function common:animated_title/reset
scoreboard players reset @s leave_game
