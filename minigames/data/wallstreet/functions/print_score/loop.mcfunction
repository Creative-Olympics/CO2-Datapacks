
scoreboard players set #wallstreet.max_score data 0
scoreboard players operation #wallstreet.max_score data > @a[team=wallstreet,tag=!wallstreet.score_printed] wallstreet.budget

execute as @a[team=wallstreet] if score @s wallstreet.budget = #wallstreet.max_score data run tag @s add wallstreet.max_score

execute as @a[tag=wallstreet.max_score,tag=!wallstreet.score_printed,limit=1,sort=random] run function wallstreet:print_score/child

execute if entity @a[team=wallstreet,tag=!wallstreet.score_printed] run function wallstreet:print_score/loop