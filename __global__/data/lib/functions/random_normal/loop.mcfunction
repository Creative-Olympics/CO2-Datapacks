

# Computing step -> dx = (2*rand()-1) * delta
execute store result score #dx tmp run random value 0..2000
scoreboard players remove #dx tmp 1000
scoreboard players operation #dx tmp *= #delta tmp
scoreboard players operation #dx tmp /= 1000 const

# Getting new position -> new_x = x + dx
scoreboard players operation #new_x tmp = #x tmp
scoreboard players operation #new_x tmp += #dx tmp

# Computing new prob
scoreboard players operation #gauss.input tmp = #new_x tmp
function lib:random_normal/gauss
scoreboard players operation #p_n tmp = #gauss.output tmp

# Computing acceptance probability -> p = min(1, p_n / p_o)
scoreboard players operation #a tmp = #p_n tmp
scoreboard players operation #a tmp *= 1000 const
scoreboard players operation #a tmp /= #p_o tmp
scoreboard players operation #a tmp < 1000 const

# Deciding whether to accept or not -> if rand() < a: x = new_x
execute store result score #r tmp run random value 0..1000
execute if score #r tmp < #a tmp run scoreboard players operation #x tmp = #new_x tmp
execute if score #r tmp < #a tmp run scoreboard players operation #p_o tmp = #p_n tmp

# tellraw @a [{"text":"dx: "},{"score":{"name":"#dx","objective":"tmp"}}]
# tellraw @a [{"text":"p_n: "},{"score":{"name":"#p_n","objective":"tmp"}}]
# tellraw @a [{"text":"p_o: "},{"score":{"name":"#p_o","objective":"tmp"}}]
# tellraw @a [{"text":"a: ","color":"red"},{"score":{"name":"#a","objective":"tmp"}}]
# tellraw @a [{"text":"r: ","color":"red"},{"score":{"name":"#r","objective":"tmp"}}]
# tellraw @a [{"text":"x: ","color":"gold","bold":true},{"score":{"name":"#x","objective":"tmp"}}]
# tellraw @a [{"text":"----------"}]

scoreboard players add #loop tmp 1
execute unless score #loop tmp matches 5.. run function lib:random_normal/loop

