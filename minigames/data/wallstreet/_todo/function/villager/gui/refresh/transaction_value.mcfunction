
function wallstreet:villager/utils/get_transaction_value

data modify entity @e[tag=wallstreet.villager.gui.display.transaction_value,sort=nearest,limit=1] text set value '[{"score":{"name":"#transaction_value","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]'

execute if score #tax ctx matches ..0 run data modify entity @e[tag=wallstreet.villager.gui.display.tax,sort=nearest,limit=1] text set value '{"text":" "}'
execute if score #tax ctx matches 1.. run data modify entity @e[tag=wallstreet.villager.gui.display.tax,sort=nearest,limit=1] text set value '[{"score":{"name":"#tax","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":"% TAX!","color":"red","bold":true,"italic":true}]'