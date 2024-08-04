scoreboard players set #max wallstreet.budget -2147483648
scoreboard players operation #max wallstreet.budget > @a[team=wallstreet,scores={wallstreet.budget=-2147483648..}] wallstreet.budget

execute as @a[team=wallstreet] if score @s wallstreet.budget = #max wallstreet.budget run tag @s add wallstreet.winner

execute as @a[team=wallstreet,tag=wallstreet.winner] at @s run function #common:animated_title {type:"victory"}
execute as @a[team=wallstreet,tag=!wallstreet.winner] at @s run function #common:animated_title {type:"defeat"}

function wallstreet:stop/leaderboard/print
tellraw @a[team=wallstreet] [{"text":"\n\nWALLSTREET > ","color":"yellow","bold":true,"italic":true},{"selector":"@a[team=wallstreet,tag=wallstreet.winner]","color":"yellow","bold":false,"italic":false},{"text":" won the game!","color":"gray","bold":false,"italic":false},{"text":"\n\n","color":"yellow","bold":true,"italic":true}]

tag @a[team=wallstreet,tag=wallstreet.winner] remove wallstreet.winner

function #wallstreet:events/stop
