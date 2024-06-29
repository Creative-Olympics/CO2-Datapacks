
function wallstreet:villager/utils/get_current_stock
function wallstreet:villager/utils/get_max_stock
function wallstreet:villager/utils/get_price

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#current_stock","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

execute \
    unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#current_stock","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

execute \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
    if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#current_stock","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

execute unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] \
        unless entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] \
    run data modify entity @e[tag=wallstreet.villager.gui.display.villager_info,sort=nearest,limit=1] text set value '[{"score":{"name":"#price","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":"","color":"white","bold":false},{"text":"/item\\n","color":"gray","bold":false},{"score":{"name":"#current_stock","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

# Max stock
execute unless entity @s[tag=wallstreet.villager.quantity.limited_by_villager_max_stock] \
    run data modify entity @e[tag=wallstreet.villager.gui.display.villager_info.max_stock,sort=nearest,limit=1] text set value '[{"text":"Max stock: ","color":"white","bold":false},{"score":{"name":"#max_stock","objective":"ctx"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false}]'

execute if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_max_stock] \
    run data modify entity @e[tag=wallstreet.villager.gui.display.villager_info.max_stock,sort=nearest,limit=1] text set value '[{"text":"Max stock: ","color":"white","bold":false},{"score":{"name":"#max_stock","objective":"ctx"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false}]'