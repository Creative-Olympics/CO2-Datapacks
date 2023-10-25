
scoreboard players operation #average_price_int tmp = @s wallstreet.stone_price
scoreboard players operation #average_price_int tmp += 500 const
scoreboard players operation #average_price_int tmp /= 1000 const

title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.stone_quantity"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"#average_price_int","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]