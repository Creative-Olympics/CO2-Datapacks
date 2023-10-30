
function wallstreet:villager/utils/get_client_next_balance

execute if score #next_balance ctx matches ..-1 \
    run data modify entity @e[tag=wallstreet.villager.gui.display.next_balance,sort=nearest,limit=1] text set value '[{"text":"Next balance: ","color":"white","bold":false,"italic":false},{"score":{"name":"#next_balance","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]'

execute if score #next_balance ctx matches 0.. \
    run data modify entity @e[tag=wallstreet.villager.gui.display.next_balance,sort=nearest,limit=1] text set value '[{"text":"Next balance: ","color":"white","bold":false,"italic":false},{"score":{"name":"#next_balance","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false,"italic":false}]'
