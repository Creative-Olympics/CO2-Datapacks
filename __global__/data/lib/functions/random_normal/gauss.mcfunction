
# Compute arg = (x-m)²/(2σ²)
scoreboard players operation #gauss.arg tmp = #gauss.input tmp
scoreboard players operation #gauss.arg tmp -= #mean tmp
scoreboard players operation #gauss.arg tmp *= #gauss.arg tmp
scoreboard players set 1000 const 1000
scoreboard players operation #gauss.arg tmp *= 1000 const
scoreboard players set 2 const 2
scoreboard players operation #gauss.arg tmp /= 2 const
scoreboard players operation #gauss.arg tmp /= #std tmp
scoreboard players operation #gauss.arg tmp /= #std tmp

# Compute exp(arg)
execute store result storage bs:in math.exp.value double 0.001 run scoreboard players get #gauss.arg tmp
scoreboard players operation #math.exp bs.in = #gauss.arg tmp
function #bs.math:exp
execute store result score #math.exp bs.out run data get storage bs:out math.exp 1000

# Compute 1/(σ√(2π))
scoreboard players set #gauss.norm tmp 1000000
scoreboard players operation #gauss.norm tmp /= #std tmp
scoreboard players set 2507 const 2507
scoreboard players operation #gauss.norm tmp /= 2507 const

# Compute result -> 1/(σ√(2π)) / exp(arg)
scoreboard players operation #gauss.output tmp = #gauss.norm tmp
scoreboard players operation #gauss.output tmp *= 1000 const
scoreboard players operation #gauss.output tmp /= #math.exp bs.out

# tellraw @a [{"text":"x: ","color":"gray"},{"score":{"name":"#gauss.input","objective":"tmp"}}]
# tellraw @a [{"text":"arg: ","color":"gray"},{"score":{"name":"#gauss.arg","objective":"tmp"}}]
# tellraw @a [{"text":"1/exp(arg): ","color":"gray"},{"score":{"name":"#math.exp","objective":"bs.out"}}]
# tellraw @a [{"text":"norm: ","color":"gray"},{"score":{"name":"#gauss.norm","objective":"tmp"}}]
# tellraw @a [{"text":"gauss: ","color":"gray"},{"score":{"name":"#gauss","objective":"tmp"}}]
# tellraw @a [{"text":" "}]