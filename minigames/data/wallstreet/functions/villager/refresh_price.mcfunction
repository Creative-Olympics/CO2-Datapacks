scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.wood_price 12
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.stone_price 17
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.leather_price 25
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.iron_price 70
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.diamond_price 361

scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.wood_quantity 5802
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.stone_quantity 642
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.leather_quantity 324
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.iron_quantity 84
scoreboard players set @s[x=-122.5,y=99,z=119.5,distance=..2] wallstreet.diamond_quantity 6

scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.wood_price 24
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.stone_price 34
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.leather_price 50
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.iron_price 140
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.diamond_price 742

scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.wood_quantity 2901
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.stone_quantity 321
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.leather_quantity 162
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.iron_quantity 42
scoreboard players set @s[x=-114.5,y=98,z=130.0,distance=..2] wallstreet.diamond_quantity 3

scoreboard players operation #wood_price data = @s wallstreet.wood_price
scoreboard players operation #stone_price data = @s wallstreet.stone_price
scoreboard players operation #leather_price data = @s wallstreet.leather_price
scoreboard players operation #iron_price data = @s wallstreet.iron_price
scoreboard players operation #diamond_price data = @s wallstreet.diamond_price

$execute positioned $(sign_x) $(sign_y) $(sign_z) run function wallstreet:villager/sign/place