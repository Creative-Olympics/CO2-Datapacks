

tag @s remove wallstreet.villager.quantity.limited_by_player_stock
tag @s remove wallstreet.villager.quantity.limited_by_villager_stock
tag @s remove wallstreet.villager.quantity.limited_by_client_budget
execute if entity @s[tag=!wallstreet.villager.sell] run function wallstreet:villager/gui/refresh/quantity_limit_buy
execute if entity @s[tag=wallstreet.villager.sell] run function wallstreet:villager/gui/refresh/quantity_limit_sell
scoreboard players set @s[scores={wallstreet.selected_quantity=..-1}] wallstreet.selected_quantity 0

execute if entity @s[tag=wallstreet.villager.quantity.limited_by_player_stock] run \
    playsound minecraft:block.note_block.cow_bell master @p[tag=wallstreet.villager.client] ~ ~ ~ 1 2 0
execute if entity @s[tag=wallstreet.villager.quantity.limited_by_villager_stock] run \
    playsound minecraft:block.note_block.cow_bell master @p[tag=wallstreet.villager.client] ~ ~ ~ 1 2 0
execute if entity @s[tag=wallstreet.villager.quantity.limited_by_client_budget] run \
    playsound minecraft:block.note_block.cow_bell master @p[tag=wallstreet.villager.client] ~ ~ ~ 1 2 0

scoreboard players operation #quantity tmp = @s wallstreet.selected_quantity

execute if entity @s[tag=wallstreet.villager.quantity.limited_by_player_stock] run data modify entity @e[tag=wallstreet.villager.gui.display.quantity_selection,sort=nearest,limit=1] text set value '[{"score":{"name":"#quantity","objective":"tmp"},"color":"red","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'
execute unless entity @s[tag=wallstreet.villager.quantity.limited_by_player_stock] run data modify entity @e[tag=wallstreet.villager.gui.display.quantity_selection,sort=nearest,limit=1] text set value '[{"score":{"name":"#quantity","objective":"tmp"},"color":"yellow","bold":true,"italic":true},{"text":" items","color":"gray","bold":false,"italic":false}]'

# Increase --------------------------------------------------------------------

# 100..
execute \
    if score #can_increase tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    unless predicate wallstreet:villager/gui/hover/add_1 \
    unless predicate wallstreet:villager/gui/hover/add_10 \
    unless predicate wallstreet:villager/gui/hover/add_100 \
    unless predicate wallstreet:villager/gui/hover/max \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  +10  +100  max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/add_1 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  +10  +100  max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/add_10 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"+10","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  +100  max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/add_100 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  +10  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"+100","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/max \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  +10  +100  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'

# 10..99
execute \
    if score #can_increase tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    unless predicate wallstreet:villager/gui/hover/add_1 \
    unless predicate wallstreet:villager/gui/hover/add_10 \
    unless predicate wallstreet:villager/gui/hover/add_100 \
    unless predicate wallstreet:villager/gui/hover/max \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  +10  ","color":"#3296fa","bold":false,"italic":false},{"text":"+100  ","color":"gray","bold":false,"italic":false},{"text":"max","color":"#3296fa","bold":false,"italic":false}]'

execute \
    if score #can_increase tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/add_1 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  +10  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"+100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/add_10 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"+10","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  +100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/max \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  +10","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"  +100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'

# 1..0
execute \
    if score #can_increase tmp matches 1..9 \ 
    as @p[tag=wallstreet.villager.client] \
    unless predicate wallstreet:villager/gui/hover/add_1 \
    unless predicate wallstreet:villager/gui/hover/add_10 \
    unless predicate wallstreet:villager/gui/hover/add_100 \
    unless predicate wallstreet:villager/gui/hover/max \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"+10  +100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 1..9 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/add_1 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  +10  +100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_increase tmp matches 1..9 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/max \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"  +10  +100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"max","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'

# 0
execute if score #can_increase tmp matches ..0 run \
    data modify entity @e[tag=wallstreet.villager.gui.display.increase_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"+1  +10  +100  max","color":"gray","bold":false,"italic":false,"underlined":false}]'

# Decrease --------------------------------------------------------------------

# 100..
execute \
    if score #can_decrease tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    unless predicate wallstreet:villager/gui/hover/remove_1 \
    unless predicate wallstreet:villager/gui/hover/remove_10 \
    unless predicate wallstreet:villager/gui/hover/remove_100 \
    unless predicate wallstreet:villager/gui/hover/0 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  -10  -100  0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/remove_1 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  -10  -100  0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/remove_10 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"-10","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  -100  0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/remove_100 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  -10  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"-100","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 100.. \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/0 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  -10  -100  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'

# 10..99
execute \
    if score #can_decrease tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    unless predicate wallstreet:villager/gui/hover/remove_1 \
    unless predicate wallstreet:villager/gui/hover/remove_10 \
    unless predicate wallstreet:villager/gui/hover/remove_100 \
    unless predicate wallstreet:villager/gui/hover/0 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  -10  ","color":"#3296fa","bold":false,"italic":false},{"text":"-100  ","color":"gray","bold":false,"italic":false},{"text":"0","color":"#3296fa","bold":false,"italic":false}]'

execute \
    if score #can_decrease tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/remove_1 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  -10  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"-100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/remove_10 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"-10","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  -100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 10..99 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/0 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  -10","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"  -100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'

# 1..0
execute \
    if score #can_decrease tmp matches 1..9 \ 
    as @p[tag=wallstreet.villager.client] \
    unless predicate wallstreet:villager/gui/hover/remove_1 \
    unless predicate wallstreet:villager/gui/hover/remove_10 \
    unless predicate wallstreet:villager/gui/hover/remove_100 \
    unless predicate wallstreet:villager/gui/hover/0 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  ","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"-10  -100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 1..9 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/remove_1 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1","color":"#3296fa","bold":false,"italic":false,"underlined":true},{"text":"  -10  -100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":false}]'

execute \
    if score #can_decrease tmp matches 1..9 \ 
    as @p[tag=wallstreet.villager.client] \
    if predicate wallstreet:villager/gui/hover/0 \
run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1","color":"#3296fa","bold":false,"italic":false,"underlined":false},{"text":"  -10  -100  ","color":"gray","bold":false,"italic":false,"underlined":false},{"text":"0","color":"#3296fa","bold":false,"italic":false,"underlined":true}]'

# 0
execute if score #can_decrease tmp matches ..0 run \
    data modify entity @e[tag=wallstreet.villager.gui.display.decrease_quantity,sort=nearest,limit=1] text set value \
        '[{"text":"-1  -10  -100  0","color":"gray","bold":false,"italic":false,"underlined":false}]'
