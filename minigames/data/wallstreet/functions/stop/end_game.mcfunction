
scoreboard players set #richest tmp 0
scoreboard players operation #richest tmp > @a[team=wallstreet] wallstreet.budget

execute as @a[team=wallstreet] at @s if score @s wallstreet.budget >= #richest tmp run tag @s add wallstreet.winner
execute as @a[tag=wallstreet.winner] at @s run function #global:animated_title {type:"victory"}
execute as @a[team=wallstreet] at @s if score @s wallstreet.budget < #richest tmp run function #global:animated_title {type:"defeat"}

function wallstreet:print_score/run

tellraw @a[team=wallstreet] [{"text":"\n\nWALLSTREET > ","color":"yellow","bold":true,"italic":true},{"selector":"@a[tag=wallstreet.winner]","color":"yellow","bold":false,"italic":false},{"text":" won the game!","color":"gray","bold":false,"italic":false},{"text":"\n\n","color":"yellow","bold":true,"italic":true}]

tag @a[tag=wallstreet.winner] remove wallstreet.winner

function #wallstreet:stop