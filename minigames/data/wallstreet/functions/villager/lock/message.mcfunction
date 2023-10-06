scoreboard players operation #lock_time tmp += 300 const
scoreboard players operation #lock_time tmp /= 20 const
scoreboard players operation #lock_time tmp += 1 const

tellraw @s [{"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true},{"text":"Come back in ","color":"red","bold":false,"italic":false},{"score":{"name":"#lock_time","objective":"tmp"}},{"text":" seconds to talk again to ","color":"red","bold":false,"italic":false},{"selector":"@e[tag=wallstreet.villager,limit=1,sort=nearest]","color":"yellow","bold":false,"italic":false}]