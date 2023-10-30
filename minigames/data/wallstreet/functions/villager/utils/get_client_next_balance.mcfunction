
function wallstreet:villager/utils/get_transaction_value

scoreboard players operation #next_balance ctx = @p[tag=wallstreet.villager.client] wallstreet.budget
execute if entity @s[tag=!wallstreet.villager.sell] run scoreboard players operation #next_balance ctx -= #transaction_value ctx
execute if entity @s[tag=wallstreet.villager.sell] run scoreboard players operation #next_balance ctx += #transaction_value ctx

# tellraw @a [{"text":"Transaction value: "},{"score":{"name":"#transaction_value","objective":"ctx"}}]
# tellraw @a [{"text":"Next balance: "},{"score":{"name":"#next_balance","objective":"ctx"}}]