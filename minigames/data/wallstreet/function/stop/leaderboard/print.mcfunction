tellraw @a[team=wallstreet] [{"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true},{"text":"Final player budget:","color":"gray","bold":false,"italic":false}]

scoreboard players set #max wallstreet.budget -2147483648
scoreboard players operation #max wallstreet.budget > @a[team=wallstreet,scores={wallstreet.budget=-2147483648..}] wallstreet.budget
execute as @a[team=wallstreet,scores={wallstreet.budget=-2147483648..}] if score @s wallstreet.budget = #max wallstreet.budget run function wallstreet:stop/leaderboard/loop
