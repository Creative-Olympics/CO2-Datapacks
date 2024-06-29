
scoreboard players add #wallstreet.music.current data 1
execute if score #wallstreet.music.current data matches 5.. run scoreboard players set #wallstreet.music.current data 1

stopsound @a[team=wallstreet] record

execute if score #wallstreet.music.current data matches 1 as @a[team=wallstreet] at @s run playsound wallstreet:theme-1 record @s ~ ~ ~ 1 1 1
execute if score #wallstreet.music.current data matches 1 run scoreboard players set #wallstreet.music.timer data 1920

execute if score #wallstreet.music.current data matches 2 as @a[team=wallstreet] at @s run playsound wallstreet:theme-2 record @s ~ ~ ~ 1 1 1
execute if score #wallstreet.music.current data matches 2 run scoreboard players set #wallstreet.music.timer data 2260

execute if score #wallstreet.music.current data matches 3 as @a[team=wallstreet] at @s run playsound wallstreet:theme-3 record @s ~ ~ ~ 1 1 1
execute if score #wallstreet.music.current data matches 3 run scoreboard players set #wallstreet.music.timer data 2340

execute if score #wallstreet.music.current data matches 4 as @a[team=wallstreet] at @s run playsound wallstreet:theme-4 record @s ~ ~ ~ 1 1 1
execute if score #wallstreet.music.current data matches 4 run scoreboard players set #wallstreet.music.timer data 2400
