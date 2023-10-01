
scoreboard players operation #x tmp = #mean tmp
scoreboard players operation #delta tmp = #std tmp
scoreboard players operation #delta tmp *= 2 const
scoreboard players set #loop tmp 0

# Computing starting prob
scoreboard players operation #gauss.input tmp = #x tmp
function lib:random_normal/gauss
scoreboard players operation #p_o tmp = #gauss.output tmp

function lib:random_normal/loop

tellraw @a [{"text":"Result:","color":"green","bold":true},{"score":{"name":"#x","objective":"tmp"}}]