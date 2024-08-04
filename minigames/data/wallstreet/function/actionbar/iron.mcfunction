scoreboard players operation #average_price_int ctx = @s wallstreet.iron_price
scoreboard players operation #average_price_int ctx += 500 const
scoreboard players operation #average_price_int ctx /= 1000 const

title @s actionbar [{"score":{"name":"@s","objective":"wallstreet.iron_current_stock"},"color":"yellow","bold":true,"italic":true},{"text":" items bought at ","color":"gray","bold":false,"italic":false},{"score":{"name":"#average_price_int","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false},{"text":"/item","color":"gray","bold":false,"italic":false}]
